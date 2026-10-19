import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int? setrenewalDate(DateTime? dateParameter) {
  int renewalDate;
  //add one Year
  DateTime date2 = dateParameter!.add(Duration(days: 10));
  print(date2); //2023-04-30 00:00:00.000
  renewalDate = DateTime.parse(date2.toString()).millisecondsSinceEpoch;
  return renewalDate;
}

int? remainingDays(
  DateTime? dateParameter1,
  int? dateParameter2,
) {
  final DateTime _today = dateParameter1!;
  final DateTime _rDate = DateTime.fromMillisecondsSinceEpoch(dateParameter2!);

  var difference = _rDate.difference(_today).inDays;
  int value = difference;

  return value;
}

String retrunImagePathString(String link) {
  return link;
}

String retrunImagePathtype(String link) {
  return link;
}

List<String> getLeadStatusbyStage(
  String stage,
  int type,
) {
  List<String> list = [];

  if (stage.toUpperCase() == "ASSIGNED") {
    // list.add("ASSIGNED");
    list.add("RINGING");
    list.add("CALLED");
    list.add("LOST");

    // list.add("CALL PENDING");
    // list.add("QUALLIFIED");
    // list.add("");

    print(list);
  } else if (stage.toUpperCase() == "FOLLOWUP") {
    list.add("DEMO_SCHEDULED");
    list.add("DEMO_DONE");
    list.add("INSTALLATION_SCHEDULED");
    list.add("COMPLETED");
    list.add("HOLD");
    list.add("LOST");

    //
    // list.add("HOLD");
    // list.add("COMPLETED");
    // list.add("LOST");
    print(list);
  } else if (stage.toUpperCase() == "DISQUALIFIED") {
    print(list);
  } else if (stage.toUpperCase() == "WON") {
    list.add("INSTALLATION_SCHEDULED");
    list.add("INSTALLATION_RESCHEDULED");
    list.add("INSTALLATION_DONE");
    list.add("LOST");
    print(list);
  } else if (stage.toUpperCase() == "LOST") {
    list.add("LOST");
    list.add("RE_ASSIGNED");
    print(list);
  }

  return list;
}

List<DocumentReference> getUserRefByUIdList(List<String> idList) {
  List<DocumentReference> ulist = [];
  for (int i = 0; i < idList.length; i++) {
    ulist.add(FirebaseFirestore.instance.doc('/USER_PROFILE/' + idList[i]));
  }
  print(ulist);

  return ulist;
}

int yesterdayDate() {
  var now = DateTime.now();
  var yesterday = DateTime(now.year, now.month, now.day - 1);

  return yesterday.millisecondsSinceEpoch;
}

int tomorrowDate() {
  var now = new DateTime.now();
  var tommarow = new DateTime(now.year, now.month, now.day + 1);

  return tommarow.millisecondsSinceEpoch;
}

bool? checkPermissions(
  String settings,
  List<String>? permissionList,
) {
  if (permissionList == null) {
    return false; // no permission list at all
  }

  // return true if ANY setting exists in permissionList

  if (permissionList.contains(settings)) {
    return true;
  }

  return false;
}

DocumentReference getnotificationuidRef(String? uid) {
  print('GET USER REF BY UID /USER_PROFILE/$uid');
  return FirebaseFirestore.instance.doc('/USER_PROFILE/$uid');
}

double countNoofdays(
  int date1,
  int date2,
  bool radiobtn,
) {
  int differenceInMilliseconds = (date2 - date1).abs();

  // Convert milliseconds to days
  int differenceInDays =
      ((differenceInMilliseconds / (1000 * 60 * 60 * 24)) + 1).floor();

  if (radiobtn) {
    return differenceInDays /
        2.0; // Ensure it returns a double like 0.5, 1.5, etc.
  } else {
    return differenceInDays.toDouble();
  }
}

String statusForStage(String status) {
  String stage = "";
  if (status.toUpperCase() == "ASSIGNED" ||
      status.toUpperCase() == "RINGING" ||
      status.toUpperCase() == "CALLED" ||
      status.toUpperCase() == "CALL_PENDING" ||
      status.toUpperCase() == "DEMO_PENDING") {
    stage = "ASSIGNED";
  } else if (status == "FOLLOWUP" ||
      status.toUpperCase() == "DEMO_DONE" ||
      status.toUpperCase() == "DEMO_SCHEDULED" ||
      status.toUpperCase() == "DEMO_RESCHEDULED" ||
      status.toUpperCase() == "INSTALLATION_SCHEDULED" ||
      status.toUpperCase() == "FOLLOWUP" ||
      status.toUpperCase() == "HOLD") {
    stage = "FOLLOWUP";
  } else if (status.toUpperCase() == "COMPLETED" ||
      status.toUpperCase() == "INSTALLATION") {
    stage = "WON";
  } else if (status.toUpperCase() == "LOST") {
    stage = "LOST";
  } else {
    stage = "FOLLOWUP";
  }
  print(stage);
  print(status);
  return stage;
}

String getMonthId(DateTime? dateTime) {
  DateTime date = dateTime ?? DateTime.now();
  //var day;
  //if (date.day.toString().length == 1) {
  //day = "0" + date.day.toString();
  //} else {
  //  day = date.day.toString();
  //}
  var month;
  if (date.month.toString().length == 1) {
    month = "0" + date.month.toString();
  } else {
    month = date.month.toString();
  }
  var invNum = date.year.toString() + "-" + month;
  print(invNum);
  return invNum;
}

String? dateFormat(DateTime? date) {
  var newFormat = DateFormat("dd-MM-yyyy");
  String newDateInString = newFormat.format(date!);
  return newDateInString;
}

double calculateExpBalance(
  double newAmount,
  double balAmount,
  String index,
) {
  double result = 0;
  if (index == "+") {
    result = newAmount + balAmount;
  } else if (index == "-") {
    result = balAmount - newAmount;
  }
  return result;
}

String firstLetterString(String data) {
  return data.substring(0, 1);
}

String calculateBalance(
  List<ExpenseRecord> docList,
  int type,
) {
  double totalInc = 0, balance = 0;
  double totalExp = 0;
  for (int i = 0; i < docList.length; i++) {
    if (docList[i].incExpType == 0) {
      totalInc = totalInc + docList[i].amount;
    }
    if (docList[i].incExpType == 1) {
      totalExp = totalExp + docList[i].amount;
    }
  }
  if (type == 0) {
    balance = totalInc - totalExp;
    print(balance);
    return balance.toString();
  } else {
    return totalExp.toString();
  }
}

String dateFormatCopy(DateTime? date) {
  var newFormat = DateFormat("dd");
  String newDateInString = newFormat.format(date!);
  return newDateInString;
}

DocumentReference getUserRefByUId(String? id) {
  print('GET USER REF BY UID /USER_PROFILE/$id');
  return FirebaseFirestore.instance.doc('/USER_PROFILE/$id');
}

ExpenseSummaryStruct expenseSummary(List<ExpenseRecord> expenseDocs) {
  double acceptedAmount = 0;
  int acceptedCount = 0;

  double pendingAmount = 0;
  int pendingCount = 0;
  double reviewAmount = 0;
  int reviewCount = 0;
  double rejectedAmount = 0;
  int rejectedCount = 0;

  for (final expense in expenseDocs) {
    final amount = expense.amount;
    final status = Expensestatus.values.firstWhere(
        (e) => e.name == expense.status,
        orElse: () => Expensestatus.PENDING);

    switch (status) {
      case Expensestatus.APPROVED:
        acceptedAmount += amount;
        acceptedCount++;
        break;

      case Expensestatus.PENDING:
        pendingAmount += amount;
        pendingCount++;
        break;

      case Expensestatus.REJECTED:
        rejectedAmount += amount;
        rejectedCount++;
        break;
      case Expensestatus.REVIEWED:
        reviewAmount += amount;
        reviewCount++;
        break;
    }
  }

  return ExpenseSummaryStruct(
    acceptedTotalAmount: acceptedAmount,
    acceptedTotalCount: acceptedCount,
    pendingTotalAmount: pendingAmount,
    pendingTotalCount: pendingCount,
    rejectedTotalAmount: rejectedAmount,
    rejectedTotalCount: rejectedCount,
    reviewTotalAmt: reviewAmount,
    reviewTotalcount: reviewCount,
  );
}

CallLogsStruct? returnCalllogs(List<CallLogsRecord>? calldoclist) {
  if (calldoclist == null || calldoclist.isEmpty) {
    return CallLogsStruct(
      incoming: '0',
      missedcalls: '0',
      rejected: '0',
      outgoing: '0',
      totalCalls: '0',
    );
  }

  int incomingCount = 0;
  int missedCount = 0;
  int rejectedCount = 0;
  int outgoingCount = 0;
  int totalCallsCount = 0;
  for (final call in calldoclist) {
    final direction = call.direction?.toLowerCase() ?? '';

    switch (direction) {
      case 'incoming':
        incomingCount++;
        totalCallsCount++;
        break;
      case 'missed':
        missedCount++;
        totalCallsCount++;
        break;
      case 'rejected':
        rejectedCount++;
        totalCallsCount++;
        break;
      case 'outgoing':
        outgoingCount++;
        totalCallsCount++;
        break;
    }
  }

  return CallLogsStruct(
    incoming: incomingCount.toString(),
    missedcalls: missedCount.toString(),
    rejected: rejectedCount.toString(),
    outgoing: outgoingCount.toString(),
    totalCalls: totalCallsCount.toString(),
  );
}

DateTime returnCurrentDate() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
}

List<String> returnNumbercall(String num) {
  if (num.isEmpty) return [];

  String digits = num.replaceAll(RegExp(r'\D'), '');

  if (digits.length > 10) {
    digits = digits.substring(digits.length - 10);
  }

  return ['+91$digits', digits];
}

String calculateDuration(String durationseconds) {
  final int totalSeconds = int.tryParse(durationseconds) ?? 0;

  if (totalSeconds <= 0) {
    return '0 sec';
  }

  final int minutes = totalSeconds ~/ 60;
  final int seconds = totalSeconds % 60;

  if (minutes > 0 && seconds > 0) {
    return '$minutes min $seconds sec';
  } else if (minutes > 0) {
    return '$minutes min';
  } else {
    return '$seconds sec';
  }
}

List<String> returnEmpty() {
  return [];
}

DocumentReference getCRMNewBusinessMasterRef() {
  return FirebaseFirestore.instance
      .doc('/BUSINESSS_MASTER/zH3SZKNTO8y8er4Xz58r');
}

LatLng? convertTolocation(String? latlong) {
  if (latlong == null || latlong.isEmpty) return null;

  final regex = RegExp(r'LatLng\(lat:\s*([-\d.]+),\s*lng:\s*([-\d.]+)\)');
  final match = regex.firstMatch(latlong);

  if (match != null) {
    final lat = double.tryParse(match.group(1)!);
    final lng = double.tryParse(match.group(2)!);

    if (lat != null && lng != null) {
      return LatLng(lat, lng);
    }
  }
  return null;
}

int getMonthlyTargetEmployee(
  List<EmployeeTargetingRecord>? docs,
  String type,
) {
  print(docs);
  if (docs == null || docs.isEmpty) return 0;

  switch (type.toLowerCase()) {
    case 'achive':
      return docs.fold<int>(
        0,
        (sum, doc) => sum + (doc.achieveNetSales ?? 0),
      );

    case 'target':
      return docs.fold<int>(
        0,
        (sum, doc) => sum + (doc.decForecastNetSales ?? 0),
      );

    case 'percentage':
      final total = docs.fold<int>(
        0,
        (sum, doc) => sum + (doc.achievementPercentage as int ?? 0),
      );
      return (total / docs.length).round();

    default:
      return 0;
  }
}

String? shareLead(LeadsManagementRecord leadDoc) {
  if (leadDoc == null) return null;

  final String name = leadDoc.username ?? 'N/A';
  final String mobile = leadDoc.mobile ?? 'N/A';
  final String city = leadDoc.city ?? 'N/A';
  final String requirement = leadDoc.requirement ?? 'N/A';
  final String email = leadDoc.email ?? 'N/A';

  final String message = '''
📌 *New Lead *

👤 *Name:* $name
📞 *Mobile:* $mobile
📧 *Email:* $email
📍 *City:* $city
📝 *Requirement:* $requirement

Shared via *Sensible CRM*
''';

  return message.trim();
}

bool? filterLead(
  String? leadStage,
  String? selectedStage,
  String? username,
  String? searchText,
) {
  final stage = selectedStage?.trim() ?? '';
  final lead = leadStage?.trim() ?? '';
  final name = username?.trim().toLowerCase() ?? '';
  final search = searchText?.trim().toLowerCase() ?? '';

  // Keep your existing stage filtering
  final stageMatch = lead == stage;

  // Empty search should show all leads for the selected stage
  final searchMatch = search.isEmpty || name.contains(search);

  return stageMatch && searchMatch;
}

String? createCode(String outletName) {
  List<String> words = outletName.trim().toUpperCase().split(RegExp(r'\s+'));

  final number = DateTime.now().millisecondsSinceEpoch % 900 + 100;

  if (words.length >= 2) {
    return '${words[0].substring(0, 3)}_${words[1].substring(0, 3)}_$number';
  }

  return '${words[0].length >= 4 ? words[0].substring(0, 4) : words[0]}_$number';
}

List<LeadsManagementRecord> searchSubString(
  String searchText,
  List<LeadsManagementRecord> list,
) {
  if (searchText.trim().isEmpty) {
    return list;
  }

  final query = searchText.trim().toLowerCase();

  return list.where((doc) {
    return doc.username.toLowerCase().contains(query);
  }).toList();
}

int isEarlyLeaving(List<int>? checkoutTime) {
  if (checkoutTime == null || checkoutTime.isEmpty) {
    return 0;
  }

  final now = DateTime.now();

  final today630 = DateTime(
    now.year,
    now.month,
    now.day,
    18,
    30,
  ).millisecondsSinceEpoch;

  int count = 0;

  for (final time in checkoutTime) {
    if (time > 0 && time < today630) {
      count++;
    }
  }

  return count;
}

double? calculateHalfDay(int halfDayCount) {
  return halfDayCount * 0.5;
}

double calculateHours(
  DateTime? fromtime,
  DateTime? totime,
) {
  if (fromtime == null || totime == null) {
    return 0.0;
  }

  int fromMinutes = fromtime.hour * 60 + fromtime.minute;
  int toMinutes = totime.hour * 60 + totime.minute;

  // If To Time is after midnight
  if (toMinutes < fromMinutes) {
    toMinutes += 24 * 60;
  }

  final hours = (toMinutes - fromMinutes) / 60.0;

  // Round to 2 decimal places
  return (hours * 100).round() / 100;
}

double calculateAbsent(
  int totalEmployee,
  int present,
  int onLeave,
) {
  final absent = totalEmployee - (present + onLeave);

  if (absent < 0) {
    return 0;
  }

  return absent.toDouble();
}

DateTime? latecomers() {
  final now = DateTime.now();

  return DateTime(
    now.year,
    now.month,
    now.day,
    10,
    0,
    0,
  );
}

int calculateLeaveHours(
  String date,
  String time,
) {
  final dateParts = date.trim().split(RegExp(r'[-/]'));

  int year;
  int month;
  int day;

  if (dateParts.length != 3) {
    return 0;
  }

  // If date starts with 4 digits => YYYY-MM-DD
  if (dateParts[0].length == 4) {
    year = int.parse(dateParts[0]);
    month = int.parse(dateParts[1]);
    day = int.parse(dateParts[2]);
  } else {
    // Otherwise => DD-MM-YYYY
    day = int.parse(dateParts[0]);
    month = int.parse(dateParts[1]);
    year = int.parse(dateParts[2]);
  }

  // -------------------------
  // TIME
  // Supports:
  // 12:00 PM
  // 12:00:00 PM
  // 2:30 PM
  // 14:30
  // -------------------------

  final timeParts = time.trim().split(' ');

  final clock = timeParts[0].split(':');

  int hour = int.parse(clock[0]);
  final int minute = clock.length > 1 ? int.parse(clock[1]) : 0;

  final int second = clock.length > 2 ? int.parse(clock[2]) : 0;

  if (timeParts.length > 1) {
    final period = timeParts[1].toUpperCase();

    if (period == 'PM' && hour != 12) {
      hour += 12;
    }

    if (period == 'AM' && hour == 12) {
      hour = 0;
    }
  }

  // -------------------------
  // COMBINE DATE + TIME
  // -------------------------

  final dateTime = DateTime(
    year,
    month,
    day,
    hour,
    minute,
    second,
  );

  // Return milliseconds
  return dateTime.millisecondsSinceEpoch;
}

int combineDateAndTime(
  DateTime date,
  DateTime time,
) {
  final combinedDateTime = DateTime(
    date.year,
    date.month,
    date.day,
    time.hour,
    time.minute,
    time.second,
    time.millisecond,
  );

  return combinedDateTime.millisecondsSinceEpoch;
}

String calculateLeave(
  String leaveType,
  DateTime startDate,
  DateTime endDate,
  DateTime fromTime,
  DateTime toTime,
) {
  DateTime fromDateTime;
  DateTime toDateTime;

  double noDays = 0;
  double hours = 0;

  if (leaveType == 'Full Day') {
    // Full Day
    // Start = 00:00:00.000
    fromDateTime = DateTime(
      startDate.year,
      startDate.month,
      startDate.day,
      0,
      0,
      0,
      0,
    );

    // End = 23:59:59.999
    toDateTime = DateTime(
      endDate.year,
      endDate.month,
      endDate.day,
      23,
      59,
      59,
      999,
    );

    final startOnly = DateTime(
      startDate.year,
      startDate.month,
      startDate.day,
    );

    final endOnly = DateTime(
      endDate.year,
      endDate.month,
      endDate.day,
    );

    // Same date = 1 day
    noDays = endOnly.difference(startOnly).inDays + 1;
  } else if (leaveType == 'Half Day') {
    // Half Day
    fromDateTime = DateTime(
      startDate.year,
      startDate.month,
      startDate.day,
      fromTime.hour,
      fromTime.minute,
      fromTime.second,
      fromTime.millisecond,
    );

    toDateTime = DateTime(
      endDate.year,
      endDate.month,
      endDate.day,
      toTime.hour,
      toTime.minute,
      toTime.second,
      toTime.millisecond,
    );

    final minutes = toDateTime.difference(fromDateTime).inMinutes;

    if (minutes < 0) {
      return '{"error":"To time must be after From time"}';
    }

    hours = minutes / 60.0;

    // Half Day = 0.5 day
    noDays = 0.5;
  } else if (leaveType == 'Hourly') {
    // Hourly
    fromDateTime = DateTime(
      startDate.year,
      startDate.month,
      startDate.day,
      fromTime.hour,
      fromTime.minute,
      fromTime.second,
      fromTime.millisecond,
    );

    toDateTime = DateTime(
      endDate.year,
      endDate.month,
      endDate.day,
      toTime.hour,
      toTime.minute,
      toTime.second,
      toTime.millisecond,
    );

    final minutes = toDateTime.difference(fromDateTime).inMinutes;

    if (minutes < 0) {
      return '{"error":"To time must be after From time"}';
    }

    // Actual hours
    hours = minutes / 60.0;

    // 8 hours = 1 day
    noDays = hours / 8.0;
  } else {
    return '{"error":"Invalid leave type"}';
  }

// Return all values
  return '''
{
  "fromDate": ${fromDateTime.millisecondsSinceEpoch},
  "toDate": ${toDateTime.millisecondsSinceEpoch},
  "noDays": $noDays,
  "hours": $hours
}
''';
}

int combineDateTimeToMillis(
  DateTime date,
  DateTime time,
) {
  final dateTime = DateTime(
    date.year,
    date.month,
    date.day,
    time.hour,
    time.minute,
    time.second,
  );

  return dateTime.millisecondsSinceEpoch;
}

int calculateHourlyLeaveHours(
  DateTime startDate,
  DateTime fromTime,
  DateTime endDate,
  DateTime toTime,
) {
  final start = DateTime(
    startDate.year,
    startDate.month,
    startDate.day,
    fromTime.hour,
    fromTime.minute,
    fromTime.second,
  );

  final end = DateTime(
    endDate.year,
    endDate.month,
    endDate.day,
    toTime.hour,
    toTime.minute,
    toTime.second,
  );

  final difference = end.difference(start);

  return difference.inMinutes ~/ 60;
}

bool? checkPermissionscontact(
  List<FeatureAccessConfig> enabledFeatureKeys,
  FeatureAccessConfig requiredFeature,
) {
  return enabledFeatureKeys.contains(requiredFeature);
}

DateTime? isPresentBefore10() {
  final now = DateTime.now();

  return DateTime(
    now.year,
    now.month,
    now.day,
    10,
    0,
    0,
    0,
  );
}

String formatDueDate(int? dateInNumber) {
  if (dateInNumber == null) {
    return '';
  }

  final date = DateTime.fromMillisecondsSinceEpoch(dateInNumber);

  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  final day = date.day.toString().padLeft(2, '0');
  final month = months[date.month - 1];
  final year = date.year.toString();

  return '$day-$month-$year';
}

String formatDueTime(int? dateInNumber) {
  if (dateInNumber == null) {
    return '';
  }

  final date = DateTime.fromMillisecondsSinceEpoch(dateInNumber);

  int hour = date.hour;
  final minute = date.minute.toString().padLeft(2, '0');

  final period = hour >= 12 ? 'PM' : 'AM';

  hour = hour % 12;
  if (hour == 0) {
    hour = 12;
  }

  final hourText = hour.toString().padLeft(2, '0');

  return '$hourText:$minute $period';
}
