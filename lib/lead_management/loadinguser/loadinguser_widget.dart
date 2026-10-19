import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loadinguser_model.dart';
export 'loadinguser_model.dart';

/// Create a page loading screen for crm app
class LoadinguserWidget extends StatefulWidget {
  const LoadinguserWidget({super.key});

  static String routeName = 'loadinguser';
  static String routePath = 'loadinguser';

  @override
  State<LoadinguserWidget> createState() => _LoadinguserWidgetState();
}

class _LoadinguserWidgetState extends State<LoadinguserWidget> {
  late LoadinguserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadinguserModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userExisted = await queryUserProfileRecordOnce(
        queryBuilder: (userProfileRecord) => userProfileRecord.where(
          'mobile',
          isEqualTo: FFAppState().mobile,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.userExisted != null) {
        FFAppState().userRef = _model.userExisted?.reference;
        FFAppState().updateUserDocStruct(
          (e) => e
            ..name = _model.userExisted?.name
            ..id = _model.userExisted?.id
            ..userRef = _model.userExisted?.reference
            ..mobile = _model.userExisted?.mobile
            ..outlets = _model.userExisted!.outlets.toList()
            ..outletId = _model.userExisted?.outletId
            ..permissions = _model.userExisted!.permissions.toList(),
        );
        FFAppState().role = _model.userExisted!.role;

        context.pushNamed(OutletlistWidget.routeName);
      } else {
        context.goNamed(AddUserProfileWithOutRoleWidget.routeName);

        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).secondaryBackground,
                            FlutterFlowTheme.of(context).secondaryBackground
                          ],
                          stops: [0.3, 1.0],
                          begin: AlignmentDirectional(1.0, -1.0),
                          end: AlignmentDirectional(-1.0, 1.0),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/SC_Final_logo_Primary_Logo_Icon.png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ewaumn1o' /* Sensible CRM */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  font: GoogleFonts.sora(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFF83B46),
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/lg.gif',
                              width: 200.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 32.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
