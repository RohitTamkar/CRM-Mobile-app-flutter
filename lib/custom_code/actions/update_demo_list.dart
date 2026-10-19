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

import 'dart:convert';

Future<List<DemoListStruct>> updateDemoList(
  LeadDemoRecord doc,
  int checkOutTime,
  LatLng checkOutLocation,
) async {
  // Add your function code here!

  //List<dynamic> itemList = [];

  List<DemoListStruct> returnList = [];
  DemoListStruct struct = DemoListStruct();

  //List<DemoListStruct> givenList = [];

  // givenList = doc.demoList!;
  //print(doc.demoList);
  for (int j = 0; j < doc.demoList!.length; j++) {
    print(doc.demoList![j]);
    if (doc.demoList![j].checkOutTime == 0) {
      struct = createDemoListStruct(
        checkInTime: doc.demoList![j].checkInTime,
        checkOutTime: checkOutTime,
        checkInLocation: doc.demoList![j].checkInLocation,
        checkOutLocation: checkOutLocation,
        note: doc.demoList![j].note,
        travelMode: doc.demoList![j].travelMode,
      );
    } else {
      struct = createDemoListStruct(
        checkInTime: doc.demoList![j].checkInTime,
        checkOutTime: doc.demoList![j].checkOutTime,
        checkInLocation: doc.demoList![j].checkInLocation,
        checkOutLocation: doc.demoList![j].checkOutLocation,
        note: doc.demoList![j].note,
        travelMode: doc.demoList![j].travelMode,
      );
    }

    returnList.add(struct);

    print(returnList);
  }

  return returnList;
}
