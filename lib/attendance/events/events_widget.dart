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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'events_model.dart';
export 'events_model.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({super.key});

  static String routeName = 'Events';
  static String routePath = 'events';

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  late EventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().contactsCacheOwner !=
          '${FFAppState().outletDetails.outletIdRef?.path}_${FFAppState().userDoc.id}') {
        FFAppState().cachedContacts = [];
        safeSetState(() {});
        FFAppState().contactsLastSyncTime = 0;
        safeSetState(() {});
        FFAppState().contactsCacheReady = false;
        safeSetState(() {});
        FFAppState().cachedEventNames = [];
        safeSetState(() {});
      }
      FFAppState().contactsCacheOwner =
          '${FFAppState().outletDetails.outletIdRef?.path}_${FFAppState().userDoc.id}';
      safeSetState(() {});
      if (FFAppState().cachedContacts.length == 0) {
        FFAppState().contactsLastSyncTime = 0;
        safeSetState(() {});
        FFAppState().cachedEventNames = [];
        safeSetState(() {});
        FFAppState().contactsCacheReady = false;
        safeSetState(() {});
      }
      _model.newContactsFromFirebase1 = await queryContactsRecordOnce(
        parent: FFAppState().outletDetails.outletIdRef,
        queryBuilder: (contactsRecord) => contactsRecord
            .where(
              'assignedUserId',
              isEqualTo: FFAppState().userDoc.id,
            )
            .where(
              'uploadedDateTime',
              isGreaterThan: FFAppState().contactsLastSyncTime,
            )
            .orderBy('uploadedDateTime'),
      );
      for (int loop1Index = 0;
          loop1Index < _model.newContactsFromFirebase1!.length;
          loop1Index++) {
        final currentLoop1Item = _model.newContactsFromFirebase1![loop1Index];
        FFAppState().addToCachedContacts(CachedContactStruct(
          id: currentLoop1Item.id,
          documentPath: currentLoop1Item.reference.path,
          name: currentLoop1Item.name,
          mobile: currentLoop1Item.mobile,
          email: currentLoop1Item.email,
          address: currentLoop1Item.address,
          city: currentLoop1Item.city,
          source: currentLoop1Item.source,
          category: currentLoop1Item.category,
          comments: currentLoop1Item.comments,
          status: currentLoop1Item.status,
          assignedUserId: currentLoop1Item.assignedUserId,
          assignedUserName: currentLoop1Item.assignedUserName,
          area: currentLoop1Item.area,
          uploadedDateTime: currentLoop1Item.uploadedDateTime,
          eventName: currentLoop1Item.eventName,
          assignedEmployeeCode: currentLoop1Item.assignedEmployeeCode,
          reason: currentLoop1Item.reason,
          eventRegistrationLink: currentLoop1Item.eventRegistrationLink,
          eventDateTime: currentLoop1Item.eventDateTime,
          eventId: currentLoop1Item.eventId,
          contactRef: currentLoop1Item.reference,
        ));
        safeSetState(() {});
        if (FFAppState()
                .cachedEventNames
                .contains(currentLoop1Item.eventName) ==
            false) {
          FFAppState().addToCachedEventNames(currentLoop1Item.eventName);
          safeSetState(() {});
        }
        FFAppState().contactsLastSyncTime = currentLoop1Item.uploadedDateTime;
        safeSetState(() {});
      }
      FFAppState().contactsCacheReady = true;
      safeSetState(() {});
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
                color: Colors.white,
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
                        'ogitu9va' /* Contacts */,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                font: GoogleFonts.lexend(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (FFAppState().contactsCacheReady == true)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final eventsList =
                                FFAppState().cachedEventNames.toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: eventsList.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 10.0),
                              itemBuilder: (context, eventsListIndex) {
                                final eventsListItem =
                                    eventsList[eventsListIndex];
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
                                          eventsListItem,
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  eventsListItem,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '${dateTimeFormat(
                                                        "yMMMd",
                                                        DateTime
                                                            .fromMillisecondsSinceEpoch(
                                                                valueOrDefault<
                                                                    int>(
                                                          FFAppState()
                                                              .cachedContacts
                                                              .where((e) =>
                                                                  e.eventName ==
                                                                  eventsListItem)
                                                              .toList()
                                                              .elementAtOrNull(
                                                                  0)
                                                              ?.eventDateTime,
                                                          0,
                                                        )),
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}- ${dateTimeFormat(
                                                        "jm",
                                                        DateTime
                                                            .fromMillisecondsSinceEpoch(
                                                                valueOrDefault<
                                                                    int>(
                                                          FFAppState()
                                                              .cachedContacts
                                                              .where((e) =>
                                                                  e.eventName ==
                                                                  eventsListItem)
                                                              .toList()
                                                              .elementAtOrNull(
                                                                  0)
                                                              ?.eventDateTime,
                                                          0,
                                                        )),
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .lexend(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ].divide(SizedBox(height: 4.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          6.0, 12.0, 6.0, 12.0),
                                                  child: Text(
                                                    'Open  :${FFAppState().cachedContacts.where((e) => e.eventName == eventsListItem).toList().length.toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.chevron_right,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    if (FFAppState().contactsCacheReady == false)
                      Text(
                        FFLocalizations.of(context).getText(
                          'zu5zbprd' /* Loading Contacts..... */,
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
                              fontSize: 22.0,
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
