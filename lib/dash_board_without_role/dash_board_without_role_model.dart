import '/attendance/checkinpopup/checkinpopup_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dash_board_without_role_widget.dart' show DashBoardWithoutRoleWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashBoardWithoutRoleModel
    extends FlutterFlowModel<DashBoardWithoutRoleWidget> {
  ///  Local state fields for this page.

  ExpenseSummaryStruct? pageSummary;
  void updatePageSummaryStruct(Function(ExpenseSummaryStruct) updateFn) {
    updateFn(pageSummary ??= ExpenseSummaryStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in DashBoardWithoutRole widget.
  List<ExpenseRecord>? initExpenseDocs;
  // Stores action output result for [Firestore Query - Query a collection] action in DashBoardWithoutRole widget.
  VersionControlRecord? updateconfig1;
  // Stores action output result for [Firestore Query - Query a collection] action in DashBoardWithoutRole widget.
  AttendanceRecord? attendenceCheck;
  // Stores action output result for [Firestore Query - Query a collection] action in DashBoardWithoutRole widget.
  List<LeaveApplicationRecord>? leaveDoc;
  // Stores action output result for [Custom Action - checkOnLeave] action in DashBoardWithoutRole widget.
  bool? checkleave;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<TrackingHistoryRecord>? datakm;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  AttendanceRecord? attendance;
  // Stores action output result for [Custom Action - returnTravelKm] action in Icon widget.
  String? data;
  // Model for navbar component.
  late NavbarModel navbarModel;
  var sessionId = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  QrSessionsRecord? sessionDoc;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
