import '/backend/backend.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_wise_contact_model.dart';
export 'user_wise_contact_model.dart';

class UserWiseContactWidget extends StatefulWidget {
  const UserWiseContactWidget({super.key});

  static String routeName = 'UserWiseContact';
  static String routePath = 'userWiseContact';

  @override
  State<UserWiseContactWidget> createState() => _UserWiseContactWidgetState();
}

class _UserWiseContactWidgetState extends State<UserWiseContactWidget> {
  late UserWiseContactModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserWiseContactModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 30.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bsh1v5it' /* Contacts */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context)
                          .headlineLarge
                          .override(
                            font: GoogleFonts.lexend(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: (FFMainAxisAlignment.spaceBetween).flutterValue,
            crossAxisAlignment: (FFCrossAxisAlignment.start).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                child: StreamBuilder<List<UserwiseContactsRecord>>(
                  stream: queryUserwiseContactsRecord(
                    parent: FFAppState().outletDetails.outletIdRef,
                    queryBuilder: (userwiseContactsRecord) =>
                        userwiseContactsRecord
                            .where(
                              'assignedUserId',
                              isEqualTo: FFAppState().userDoc.id,
                            )
                            .orderBy('uploadedDateTime', descending: true),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: SpinKitPulse(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                        ),
                      );
                    }
                    List<UserwiseContactsRecord>
                        listViewUserwiseContactsRecordList = snapshot.data!;

                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewUserwiseContactsRecordList.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewUserwiseContactsRecord =
                            listViewUserwiseContactsRecordList[listViewIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              ContactsEventWiseWidget.routeName,
                              queryParameters: {
                                'event': serializeParam(
                                  listViewUserwiseContactsRecord.eventName,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      (FFMainAxisAlignment.spaceBetween)
                                          .flutterValue,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewUserwiseContactsRecord
                                              .eventName,
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font: GoogleFonts.lexend(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.chevron_right,
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          size: 20.0,
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color:
                                    FlutterFlowTheme.of(context).customColor1,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavbarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
