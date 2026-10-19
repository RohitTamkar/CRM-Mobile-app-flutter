import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'my_attendence_widget.dart' show MyAttendenceWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyAttendenceModel extends FlutterFlowModel<MyAttendenceWidget> {
  ///  Local state fields for this page.

  AttendanceRecord? todayAttendance;

  bool isCheckingOut = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<AttendanceRecord>();
  // Stores action output result for [Custom Action - getAddress] action in Button widget.
  dynamic? location;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  AttendanceRecord? todayAttendanceout;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AttendanceRecord? nodocNewCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
