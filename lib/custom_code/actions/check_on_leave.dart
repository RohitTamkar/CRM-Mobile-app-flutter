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

Future<bool> checkOnLeave(
  BuildContext context,
  List<LeaveApplicationRecord> leaveDoc,
) async {
  final DateTime now = DateTime.now();
  final DateTime today = DateTime(now.year, now.month, now.day); // remove time

  for (final leave in leaveDoc) {
    if (leave.status != 'APPROVED') continue;

    final DateTime fromDate = DateTime.fromMillisecondsSinceEpoch(
      leave.fromDate,
    );
    final DateTime toDate = DateTime.fromMillisecondsSinceEpoch(
      leave.toDate,
    );

    final DateTime from = DateTime(fromDate.year, fromDate.month, fromDate.day);
    final DateTime to = DateTime(toDate.year, toDate.month, toDate.day);

    if (!today.isBefore(from) && !today.isAfter(to)) {
      // User is on leave today
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Leave Alert'),
          content: const Text('You are on leave today'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return true;
    }
  }

  return false;
}
