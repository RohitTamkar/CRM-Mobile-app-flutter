import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'contacts_event_wise_copy_widget.dart' show ContactsEventWiseCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsEventWiseCopyModel
    extends FlutterFlowModel<ContactsEventWiseCopyWidget> {
  ///  Local state fields for this page.

  bool master = false;

  String? searchText;

  bool? showSearch = false;

  String status = 'CALLED';

  List<CachedContactStruct> filteredCachedContacts = [];
  void addToFilteredCachedContacts(CachedContactStruct item) =>
      filteredCachedContacts.add(item);
  void removeFromFilteredCachedContacts(CachedContactStruct item) =>
      filteredCachedContacts.remove(item);
  void removeAtIndexFromFilteredCachedContacts(int index) =>
      filteredCachedContacts.removeAt(index);
  void insertAtIndexInFilteredCachedContacts(
          int index, CachedContactStruct item) =>
      filteredCachedContacts.insert(index, item);
  void updateFilteredCachedContactsAtIndex(
          int index, Function(CachedContactStruct) updateFn) =>
      filteredCachedContacts[index] = updateFn(filteredCachedContacts[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in ContactsEventWiseCopy widget.
  List<ContactsRecord>? newContactsFromFirebase3;
  // Stores action output result for [Backend Call - Read Document] action in Column widget.
  ContactsRecord? contactDetailsFromCache;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Query cache managers for this widget.

  final _contactsManager = StreamRequestManager<List<UserProfileRecord>>();
  Stream<List<UserProfileRecord>> contacts({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<UserProfileRecord>> Function() requestFn,
  }) =>
      _contactsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearContactsCache() => _contactsManager.clear();
  void clearContactsCacheKey(String? uniqueKey) =>
      _contactsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearContactsCache();
  }
}
