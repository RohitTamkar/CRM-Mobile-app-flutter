import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.subscriptionResult = await queryModuleSubscriptionRecordOnce(
        parent: FFAppState().outletDetails.outletIdRef,
        queryBuilder: (moduleSubscriptionRecord) =>
            moduleSubscriptionRecord.where(
          'id',
          isEqualTo: 'FEATURE_ACCESS_CONFIG',
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.subscriptionResult != null) {
        _model.showContacts = _model.subscriptionResult!.enabledFeatureKeys
            .contains(FeatureAccessConfig.contact_upload);
        safeSetState(() {});
      } else {
        _model.showContacts = false;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 64.4,
      decoration: BoxDecoration(
        color: Color(0xFFB6001A),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(DashboardWidget.routeName);

                FFAppState().homeIndex = 0;
                safeSetState(() {});
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      if (FFAppState().homeIndex == 0) {
                        return Icon(
                          Icons.home,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 24.0,
                        );
                      } else {
                        return Icon(
                          Icons.home,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        );
                      }
                    },
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '9v5ws0w6' /* Home */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.lexend(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ],
              ),
            ),
            if (valueOrDefault<bool>(
              functions.checkPermissions(
                  Permissions.CRM_LEADS_VIEW.name,
                  FFAppState()
                      .userDoc
                      .permissions
                      .where((e) =>
                          e.outletId == FFAppState().outletDetails.outletId)
                      .toList()
                      .firstOrNull
                      ?.outletPermissions
                      ?.toList()),
              false,
            ))
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (FFAppState().role == 'USER') {
                    context.pushNamed(LeadManagementUserWidget.routeName);
                  } else {
                    context.pushNamed(LeadManagementSuperAdminWidget.routeName);
                  }

                  FFAppState().homeIndex = 1;
                  safeSetState(() {});
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(
                      builder: (context) {
                        if (FFAppState().homeIndex == 1) {
                          return Icon(
                            Icons.leaderboard,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 24.0,
                          );
                        } else {
                          return Icon(
                            Icons.leaderboard,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 24.0,
                          );
                        }
                      },
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '91f3gu8h' /* Leads */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.lexend(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            if (valueOrDefault<bool>(
              functions.checkPermissions(
                  Permissions.CRM_EXPENSE_VIEW.name,
                  FFAppState()
                      .userDoc
                      .permissions
                      .where((e) =>
                          e.outletId == FFAppState().outletDetails.outletId)
                      .toList()
                      .firstOrNull
                      ?.outletPermissions
                      ?.toList()),
              false,
            ))
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(ExpenseDashboard2Widget.routeName);

                  FFAppState().homeIndex = 2;
                  safeSetState(() {});
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(
                      builder: (context) {
                        if (FFAppState().homeIndex == 2) {
                          return Icon(
                            Icons.account_balance_wallet,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 24.0,
                          );
                        } else {
                          return Icon(
                            Icons.account_balance_wallet,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 24.0,
                          );
                        }
                      },
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'erox56lx' /* Expense */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.lexend(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            if (_model.showContacts == true)
              Container(
                decoration: BoxDecoration(),
                child: Visibility(
                  visible: valueOrDefault<bool>(
                    functions.checkPermissions(
                        Permissions.CRM_CONTACTVIEW.name,
                        FFAppState()
                            .userDoc
                            .permissions
                            .where((e) =>
                                e.outletId ==
                                FFAppState().outletDetails.outletId)
                            .toList()
                            .firstOrNull
                            ?.outletPermissions
                            ?.toList()),
                    false,
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(UserWiseContactWidget.routeName);

                      FFAppState().homeIndex = 3;
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
                            if (FFAppState().homeIndex == 3) {
                              return Icon(
                                Icons.perm_contact_cal,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.perm_contact_cal,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '5ya633w4' /* Contacts */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.lexend(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(Profile2Widget.routeName);

                FFAppState().homeIndex = 4;
                safeSetState(() {});
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      if (FFAppState().homeIndex == 4) {
                        return Icon(
                          Icons.person,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 24.0,
                        );
                      } else {
                        return Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        );
                      }
                    },
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'eoxgr64x' /* Profile */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.lexend(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
