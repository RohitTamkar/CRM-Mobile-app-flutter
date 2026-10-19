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

import 'dart:math';

String? returnTravelKm(
  List<TrackingHistoryRecord>? trackhistory,
  LatLng? startLocation,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (trackhistory == null || trackhistory.isEmpty || startLocation == null) {
    return '0';
  }

  double totalDistanceKm = 0.0;

  double prevLat = startLocation.latitude;
  double prevLng = startLocation.longitude;

  for (final track in trackhistory) {
    final geoPoint = track.currentlocation;
    if (geoPoint == null) continue;

    final currLat = geoPoint.latitude;
    final currLng = geoPoint.longitude;

    totalDistanceKm += _calculateDistanceKm(
      prevLat,
      prevLng,
      currLat,
      currLng,
    );

    prevLat = currLat;
    prevLng = currLng;
  }

  return totalDistanceKm.toStringAsFixed(2);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

/// 🔹 Haversine Formula
double _calculateDistanceKm(
  double lat1,
  double lon1,
  double lat2,
  double lon2,
) {
  const double earthRadiusKm = 6371;

  double dLat = _degToRad(lat2 - lat1);
  double dLon = _degToRad(lon2 - lon1);

  double a = sin(dLat / 2) * sin(dLat / 2) +
      cos(_degToRad(lat1)) *
          cos(_degToRad(lat2)) *
          sin(dLon / 2) *
          sin(dLon / 2);

  double c = 2 * atan2(sqrt(a), sqrt(1 - a));

  return earthRadiusKm * c;
}

double _degToRad(double deg) {
  return deg * (pi / 180);
}
