// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:table_calendar/table_calendar.dart';

class CustomDateRangeWidget extends StatefulWidget {
  const CustomDateRangeWidget({
    super.key,
    this.width = 400,
    this.height = 400,
  });

  final double width;
  final double height;

  @override
  State<CustomDateRangeWidget> createState() => _CustomDateRangeWidgetState();
}

class _CustomDateRangeWidgetState extends State<CustomDateRangeWidget> {
  DateTime? start;
  DateTime? end;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime.now(),
              focusedDay: DateTime.now(),
              rangeSelectionMode: RangeSelectionMode.toggledOn,
              rangeStartDay: start,
              rangeEndDay: end,
              onRangeSelected: (s, e, f) {
                setState(() {
                  start = s;
                  end = e;
                });
              },
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (start != null && end != null) {
                FFAppState().startdate = start!;
                FFAppState().enddate = end!;
                FFAppState().update;
                Navigator.pop(context); // close bottom sheet
              }
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }
}
