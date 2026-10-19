import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/expense/check_in_lead/check_in_lead_widget.dart';
import '/expense/check_out_demo/check_out_demo_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/lead_management/lost_leads/lost_leads_widget.dart';
import '/lead_management/schedule/schedule_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'lead_log2_widget.dart' show LeadLog2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class LeadLog2Model extends FlutterFlowModel<LeadLog2Widget> {
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

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDownStageDefault widget.
  String? dropDownStageDefaultValue;
  FormFieldController<String>? dropDownStageDefaultValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in InstallationPage widget.
  LeadActivitiesRecord? activiryRes;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  LeadActivitiesRecord? activiryResCopy;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
