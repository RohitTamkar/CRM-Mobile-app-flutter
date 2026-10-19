import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'create_leave_type_widget.dart' show CreateLeaveTypeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateLeaveTypeModel extends FlutterFlowModel<CreateLeaveTypeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rjdexxwe' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for categoryNo widget.
  FocusNode? categoryNoFocusNode;
  TextEditingController? categoryNoTextController;
  String? Function(BuildContext, String?)? categoryNoTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LeaveTypeRecord? idref;

  @override
  void initState(BuildContext context) {
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    categoryNoFocusNode?.dispose();
    categoryNoTextController?.dispose();
  }
}
