import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'check_out_demo_widget.dart' show CheckOutDemoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckOutDemoModel extends FlutterFlowModel<CheckOutDemoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldNote widget.
  FocusNode? textFieldNoteFocusNode;
  TextEditingController? textFieldNoteTextController;
  String? Function(BuildContext, String?)? textFieldNoteTextControllerValidator;
  // Stores action output result for [Custom Action - uploadimageedit] action in Button widget.
  String? imagepath;
  // State field(s) for DropDownStage widget.
  String? dropDownStageValue;
  FormFieldController<String>? dropDownStageValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNoteFocusNode?.dispose();
    textFieldNoteTextController?.dispose();
  }
}
