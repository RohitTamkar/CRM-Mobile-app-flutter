import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'events_widget.dart' show EventsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventsModel extends FlutterFlowModel<EventsWidget> {
  ///  Local state fields for this page.

  List<ContactsRecord> newContactsFromFirebase = [];
  void addToNewContactsFromFirebase(ContactsRecord item) =>
      newContactsFromFirebase.add(item);
  void removeFromNewContactsFromFirebase(ContactsRecord item) =>
      newContactsFromFirebase.remove(item);
  void removeAtIndexFromNewContactsFromFirebase(int index) =>
      newContactsFromFirebase.removeAt(index);
  void insertAtIndexInNewContactsFromFirebase(int index, ContactsRecord item) =>
      newContactsFromFirebase.insert(index, item);
  void updateNewContactsFromFirebaseAtIndex(
          int index, Function(ContactsRecord) updateFn) =>
      newContactsFromFirebase[index] = updateFn(newContactsFromFirebase[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Events widget.
  List<ContactsRecord>? newContactsFromFirebase1;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
