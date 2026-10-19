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

import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

Future<dynamic> getAddress(LatLng latLon) async {
  List<Placemark> addresses =
      await placemarkFromCoordinates(latLon.latitude, latLon.longitude);

  dynamic first = addresses.first;
  print("${first.name} : ${first..administrativeArea}");
  return first.toJson();
}
