import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'add_user_profile_with_out_role_widget.dart'
    show AddUserProfileWithOutRoleWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddUserProfileWithOutRoleModel
    extends FlutterFlowModel<AddUserProfileWithOutRoleWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldname widget.
  FocusNode? textFieldnameFocusNode;
  TextEditingController? textFieldnameTextController;
  String? Function(BuildContext, String?)? textFieldnameTextControllerValidator;
  String? _textFieldnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yuau2hm3' /* TextField is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldmob widget.
  FocusNode? textFieldmobFocusNode;
  TextEditingController? textFieldmobTextController;
  String? Function(BuildContext, String?)? textFieldmobTextControllerValidator;
  // State field(s) for TextFieldemail widget.
  FocusNode? textFieldemailFocusNode;
  TextEditingController? textFieldemailTextController;
  String? Function(BuildContext, String?)?
      textFieldemailTextControllerValidator;
  String? _textFieldemailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6h4ml0dd' /* TextField is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'rxkan3bj' /* not valid email */,
      );
    }
    return null;
  }

  // State field(s) for TextFieldpass widget.
  FocusNode? textFieldpassFocusNode;
  TextEditingController? textFieldpassTextController;
  String? Function(BuildContext, String?)? textFieldpassTextControllerValidator;
  String? _textFieldpassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jch454vk' /* TextField is required */,
      );
    }

    return null;
  }

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextFieldpin widget.
  FocusNode? textFieldpinFocusNode;
  TextEditingController? textFieldpinTextController;
  String? Function(BuildContext, String?)? textFieldpinTextControllerValidator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? result;

  @override
  void initState(BuildContext context) {
    textFieldnameTextControllerValidator =
        _textFieldnameTextControllerValidator;
    textFieldemailTextControllerValidator =
        _textFieldemailTextControllerValidator;
    textFieldpassTextControllerValidator =
        _textFieldpassTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldnameFocusNode?.dispose();
    textFieldnameTextController?.dispose();

    textFieldmobFocusNode?.dispose();
    textFieldmobTextController?.dispose();

    textFieldemailFocusNode?.dispose();
    textFieldemailTextController?.dispose();

    textFieldpassFocusNode?.dispose();
    textFieldpassTextController?.dispose();

    textFieldpinFocusNode?.dispose();
    textFieldpinTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
