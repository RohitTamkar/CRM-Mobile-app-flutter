import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'expense_item_widget.dart' show ExpenseItemWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExpenseItemModel extends FlutterFlowModel<ExpenseItemWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldItemName widget.
  FocusNode? textFieldItemNameFocusNode;
  TextEditingController? textFieldItemNameTextController;
  String? Function(BuildContext, String?)?
      textFieldItemNameTextControllerValidator;
  // State field(s) for TextFieldQuantity widget.
  FocusNode? textFieldQuantityFocusNode;
  TextEditingController? textFieldQuantityTextController;
  String? Function(BuildContext, String?)?
      textFieldQuantityTextControllerValidator;
  // State field(s) for TextFieldRate widget.
  FocusNode? textFieldRateFocusNode;
  TextEditingController? textFieldRateTextController;
  String? Function(BuildContext, String?)? textFieldRateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldItemNameFocusNode?.dispose();
    textFieldItemNameTextController?.dispose();

    textFieldQuantityFocusNode?.dispose();
    textFieldQuantityTextController?.dispose();

    textFieldRateFocusNode?.dispose();
    textFieldRateTextController?.dispose();
  }
}
