import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'schedule_widget.dart' show ScheduleWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduleModel extends FlutterFlowModel<ScheduleWidget> {
  ///  Local state fields for this component.

  DateTime? dateTime;

  ///  State fields for stateful widgets in this component.

  // State field(s) for typeDropdown widget.
  String? typeDropdownValue;
  FormFieldController<String>? typeDropdownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in typeDropdown widget.
  LeadActivitiesRecord? activiryRes2;
  // Stores action output result for [Firestore Query - Query a collection] action in typeDropdown widget.
  LeadActivitiesRecord? activiryRes3;
  // State field(s) for RadioButton1 widget.
  FormFieldController<String>? radioButton1ValueController;
  DateTime? datePicked;
  // State field(s) for TextFieldUsername widget.
  FocusNode? textFieldUsernameFocusNode;
  TextEditingController? textFieldUsernameTextController;
  String? Function(BuildContext, String?)?
      textFieldUsernameTextControllerValidator;
  // State field(s) for TextFieldDecs widget.
  FocusNode? textFieldDecsFocusNode;
  TextEditingController? textFieldDecsTextController;
  String? Function(BuildContext, String?)? textFieldDecsTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LeadActivitiesRecord? activityDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldUsernameFocusNode?.dispose();
    textFieldUsernameTextController?.dispose();

    textFieldDecsFocusNode?.dispose();
    textFieldDecsTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButton1Value => radioButton1ValueController?.value;
}
