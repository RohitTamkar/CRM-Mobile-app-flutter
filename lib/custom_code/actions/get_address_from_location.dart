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

import 'package:geocoding/geocoding.dart';

Future<String> getAddressFromLocation(LatLng? location) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (location == null) ;

  try {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      location!.latitude,
      location!.longitude,
    );

    if (placemarks.isEmpty) ;

    final place = placemarks.first;

    // Build readable address
    String address = [
      place.name,
      place.subLocality,
      place.locality,
      place.administrativeArea,
      place.country
    ].where((e) => e != null && e!.trim().isNotEmpty).join(", ");

    return address;
  } catch (e) {
    return '';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
