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
import 'contacts_event_wise_widget.dart' show ContactsEventWiseWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsEventWiseModel extends FlutterFlowModel<ContactsEventWiseWidget> {
  ///  Local state fields for this page.

  bool master = false;

  String? searchText;

  bool? showSearch = false;

  String status = 'CALLED';

  ///  State fields for stateful widgets in this page.

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
