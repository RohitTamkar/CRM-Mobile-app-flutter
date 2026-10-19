import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'create_task_widget.dart' show CreateTaskWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateTaskModel extends FlutterFlowModel<CreateTaskWidget> {
  ///  Local state fields for this page.

  DateTime? taskDate;

  DateTime? dueDate;

  DateTime? dueTime;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mlcibddc' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for tasktype widget.
  FocusNode? tasktypeFocusNode;
  TextEditingController? tasktypeTextController;
  String? Function(BuildContext, String?)? tasktypeTextControllerValidator;
  String? _tasktypeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qoymqe4j' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for priority widget.
  String? priorityValue;
  FormFieldController<String>? priorityValueController;
  // State field(s) for assignee widget.
  String? assigneeValue;
  FormFieldController<String>? assigneeValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for sourcetype widget.
  FocusNode? sourcetypeFocusNode;
  TextEditingController? sourcetypeTextController;
  String? Function(BuildContext, String?)? sourcetypeTextControllerValidator;
  String? _sourcetypeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6x6icj11' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for sourceId widget.
  FocusNode? sourceIdFocusNode;
  TextEditingController? sourceIdTextController;
  String? Function(BuildContext, String?)? sourceIdTextControllerValidator;
  String? _sourceIdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nbm0ovn7' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TaskManagementRecord? createtask;

  @override
  void initState(BuildContext context) {
    titleTextControllerValidator = _titleTextControllerValidator;
    tasktypeTextControllerValidator = _tasktypeTextControllerValidator;
    sourcetypeTextControllerValidator = _sourcetypeTextControllerValidator;
    sourceIdTextControllerValidator = _sourceIdTextControllerValidator;
  }

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    tasktypeFocusNode?.dispose();
    tasktypeTextController?.dispose();

    sourcetypeFocusNode?.dispose();
    sourcetypeTextController?.dispose();

    sourceIdFocusNode?.dispose();
    sourceIdTextController?.dispose();
  }
}
