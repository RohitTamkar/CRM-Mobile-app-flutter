import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/components/success_attendance_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'checkinpopup_widget.dart' show CheckinpopupWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckinpopupModel extends FlutterFlowModel<CheckinpopupWidget> {
  ///  Local state fields for this component.

  bool isCheckingIn = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  AttendanceRecord? todayAttendance;
  // Stores action output result for [Custom Action - getAddress] action in Button widget.
  dynamic? location;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AttendanceRecord? nodocNewCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
