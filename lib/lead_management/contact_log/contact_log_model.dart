import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'contact_log_widget.dart' show ContactLogWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLogModel extends FlutterFlowModel<ContactLogWidget> {
  ///  Local state fields for this page.

  bool leadDetails = true;

  bool task = false;

  bool calls = false;

  List<String> numbers = [];
  void addToNumbers(String item) => numbers.add(item);
  void removeFromNumbers(String item) => numbers.remove(item);
  void removeAtIndexFromNumbers(int index) => numbers.removeAt(index);
  void insertAtIndexInNumbers(int index, String item) =>
      numbers.insert(index, item);
  void updateNumbersAtIndex(int index, Function(String) updateFn) =>
      numbers[index] = updateFn(numbers[index]);

  bool show = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for comment widget.
  FocusNode? commentFocusNode;
  TextEditingController? commentTextController;
  String? Function(BuildContext, String?)? commentTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for reason widget.
  FocusNode? reasonFocusNode;
  TextEditingController? reasonTextController;
  String? Function(BuildContext, String?)? reasonTextControllerValidator;
  // State field(s) for DropDownStageDefault widget.
  String? dropDownStageDefaultValue;
  FormFieldController<String>? dropDownStageDefaultValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commentFocusNode?.dispose();
    commentTextController?.dispose();

    reasonFocusNode?.dispose();
    reasonTextController?.dispose();
  }
}
