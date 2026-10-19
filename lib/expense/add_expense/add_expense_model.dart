import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'add_expense_widget.dart' show AddExpenseWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddExpenseModel extends FlutterFlowModel<AddExpenseWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadedFilesList = [];
  void addToUploadedFilesList(FFUploadedFile item) =>
      uploadedFilesList.add(item);
  void removeFromUploadedFilesList(FFUploadedFile item) =>
      uploadedFilesList.remove(item);
  void removeAtIndexFromUploadedFilesList(int index) =>
      uploadedFilesList.removeAt(index);
  void insertAtIndexInUploadedFilesList(int index, FFUploadedFile item) =>
      uploadedFilesList.insert(index, item);
  void updateUploadedFilesListAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedFilesList[index] = updateFn(uploadedFilesList[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownValueController;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for travelDropDown widget.
  String? travelDropDownValue;
  FormFieldController<String>? travelDropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextFieldamt widget.
  FocusNode? textFieldamtFocusNode;
  TextEditingController? textFieldamtTextController;
  String? Function(BuildContext, String?)? textFieldamtTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  DateTime? datePicked;
  bool isDataUploading_uploadDataH7lInvoice = false;
  FFUploadedFile uploadedLocalFile_uploadDataH7lInvoice =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataH7lInvoice = '';

  bool isDataUploading_uploadDataImgnXImg = false;
  FFUploadedFile uploadedLocalFile_uploadDataImgnXImg =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataImgnXImg = '';

  // Stores action output result for [Validate Form] action in Button widget.
  bool? formValidateStatus;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ExpenseRecord? expenseDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserExpenseBalanceRecord? userExpDoc;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserExpenseBalanceRecord? userExpBalancedoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldamtFocusNode?.dispose();
    textFieldamtTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    textFieldFocusNode5?.dispose();
    textController6?.dispose();
  }
}
