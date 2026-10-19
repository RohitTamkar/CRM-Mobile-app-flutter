// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions
import 'package:firebase_auth/firebase_auth.dart';

import '/flutter_flow/flutter_flow_util.dart' hide LatLng;
import 'index.dart'; // Imports other custom actions

import '/flutter_flow/flutter_flow_util.dart' hide LatLng;
import 'index.dart'; // Imports other custom actions
import 'dart:io';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:geocoding/geocoding.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' hide LatLng;
import 'dart:convert';

import 'package:flutter/foundation.dart';

Future<String> uploadimageedit(
  BuildContext context,
  LatLng currentlocation,
) async {
  try {
    final auth = FirebaseAuth.instance;
    if (auth.currentUser == null) {
      await auth.signInAnonymously();
    }

    // Pick image
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );
    if (pickedFile == null) throw Exception("No image selected.");

    final File imageFile = File(pickedFile.path);

    // Reverse Geocode (SLOW → keep minimal)
    final placemarks = await placemarkFromCoordinates(
      currentlocation.latitude,
      currentlocation.longitude,
    );
    final p = placemarks.first;
    final address = [
      p.name,
      p.locality,
      p.administrativeArea,
      p.country,
    ].where((s) => (s ?? '').trim().isNotEmpty).join(', ');

    // Prepare data for isolate
    final now = DateTime.now();
    final formattedDate = DateFormat('dd-MM-yyyy hh:mm:ss a').format(now);
    final latlng =
        "📍 ${currentlocation.latitude.toStringAsFixed(5)}, ${currentlocation.longitude.toStringAsFixed(5)}";

    final params = _EditParams(
      await imageFile.readAsBytes(),
      address,
      latlng,
      formattedDate,
    );

    // 🚀 Run heavy image processing in ISOLATE
    final Uint8List editedBytes = await compute(_editImageIsolate, params);

    // Save compressed image locally
    final tempDir = await getTemporaryDirectory();
    final editedPath =
        '${tempDir.path}/edited_${DateTime.now().millisecondsSinceEpoch}.jpg';
    final editedFile = File(editedPath);
    await editedFile.writeAsBytes(editedBytes);

    // Upload to Firebase Storage
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('uploads')
        .child('image_${DateTime.now().millisecondsSinceEpoch}.jpg');

    final task = await storageRef.putFile(editedFile);
    final url = await task.ref.getDownloadURL();

    FFAppState().imageurl = url;
    return url;
  } catch (e, st) {
    debugPrint('❌ Error uploading image: $e\n$st');
    rethrow;
  }
}

class _EditParams {
  final Uint8List bytes;
  final String address;
  final String latlng;
  final String datetime;

  _EditParams(this.bytes, this.address, this.latlng, this.datetime);
}

Uint8List _editImageIsolate(_EditParams p) {
  final img.Image? original = img.decodeImage(p.bytes);
  if (original == null) throw Exception("Decode failed");

  // Resize
  final resized = img.copyResize(
    original,
    width: original.width > 1280 ? 1280 : original.width,
  );

  const padding = 25;
  const lineSpacing = 12;

  final textHeight = 60 + lineSpacing + 36 + lineSpacing + 36;
  final bannerHeight = textHeight + padding * 2;
  final bottomY = resized.height - bannerHeight;

  // Add banner
  img.fillRect(
    resized,
    x1: 0,
    y1: bottomY,
    x2: resized.width,
    y2: resized.height,
    color: img.ColorRgba8(0, 0, 0, 180),
  );

  img.drawString(
    resized,
    font: img.arial48,
    x: 25,
    y: bottomY + padding,
    p.address,
    color: img.ColorRgba8(0, 255, 0, 255),
  );

  img.drawString(
    resized,
    font: img.arial14,
    x: 25,
    y: bottomY + padding + 60 + lineSpacing,
    p.latlng,
    color: img.ColorRgba8(255, 255, 0, 255),
  );

  img.drawString(
    resized,
    font: img.arial48,
    x: 25,
    y: bottomY + padding + 60 + lineSpacing + 36 + lineSpacing,
    p.datetime,
    color: img.ColorRgba8(255, 255, 255, 255),
  );

  // 🔥 Final compression (quality 60 = VERY FAST)
  return Uint8List.fromList(img.encodeJpg(resized, quality: 60));
}
