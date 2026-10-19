import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/components/success_attendance_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkinpopup_model.dart';
export 'checkinpopup_model.dart';

/// checkin or leave popup .take some related icon
class CheckinpopupWidget extends StatefulWidget {
  const CheckinpopupWidget({super.key});

  @override
  State<CheckinpopupWidget> createState() => _CheckinpopupWidgetState();
}

class _CheckinpopupWidgetState extends State<CheckinpopupWidget> {
  late CheckinpopupModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckinpopupModel());

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
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  4.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 36.0,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '2tj3kulp' /* Check In Or Take Leave */,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                font: GoogleFonts.lexend(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'j2wo5hsl' /* Are you checking in or leaving... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.lexend(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 140.0,
                      height: 40.0,
                      child: Stack(
                        children: [
                          if (_model.isCheckingIn == false)
                            FFButtonWidget(
                              onPressed: () async {
                                currentUserLocationValue =
                                    await getCurrentUserLocation(
                                        defaultLocation: LatLng(0.0, 0.0));
                                if (_model.isCheckingIn == false) {
                                  _model.isCheckingIn = true;
                                  safeSetState(() {});
                                  _model.todayAttendance =
                                      await queryAttendanceRecordOnce(
                                    parent:
                                        FFAppState().outletDetails.outletIdRef,
                                    queryBuilder: (attendanceRecord) =>
                                        attendanceRecord
                                            .where(
                                              'userId',
                                              isEqualTo:
                                                  FFAppState().userDoc.id,
                                            )
                                            .where(
                                              'dayId',
                                              isEqualTo: dateTimeFormat(
                                                "dd-MM-y",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                            ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  if (_model.todayAttendance?.reference !=
                                      null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'You have already checked in today.',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 2000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    _model.isCheckingIn = false;
                                    safeSetState(() {});
                                  } else {
                                    _model.location = await actions.getAddress(
                                      currentUserLocationValue!,
                                    );

                                    var attendanceRecordReference =
                                        AttendanceRecord.createDoc(
                                      FFAppState().outletDetails.outletIdRef!,
                                      id: '${FFAppState().userDoc.id}-${dateTimeFormat(
                                        "yyyyMMdd",
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}',
                                    );
                                    await attendanceRecordReference
                                        .set(createAttendanceRecordData(
                                      status: true,
                                      note: '\" \"',
                                      dayId: dateTimeFormat(
                                        "dd-MM-y",
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      checkInTime: getCurrentTimestamp
                                          .millisecondsSinceEpoch,
                                      checkOutTime: 0,
                                      outletId:
                                          FFAppState().outletDetails.outletId,
                                      yearId: dateTimeFormat(
                                        "y",
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      monthId: dateTimeFormat(
                                        "MM-y",
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      userId: FFAppState().userDoc.id,
                                      createdDate: getCurrentTimestamp,
                                      isPresent: true,
                                      userName: FFAppState().userDoc.name,
                                      checkInLocation:
                                          currentUserLocationValue?.toString(),
                                      checkInLocationDetails:
                                          createLocationDetailsStruct(
                                        name: getJsonField(
                                          _model.location,
                                          r'''$.name''',
                                        ).toString(),
                                        street: getJsonField(
                                          _model.location,
                                          r'''$.street''',
                                        ).toString(),
                                        locality: getJsonField(
                                          _model.location,
                                          r'''$.locality''',
                                        ).toString(),
                                        subLocality: getJsonField(
                                          _model.location,
                                          r'''$.subLocality''',
                                        ).toString(),
                                        postalCode: getJsonField(
                                          _model.location,
                                          r'''$.postalCode''',
                                        ).toString(),
                                        device: 'MOBILE',
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                    ));
                                    _model.nodocNewCreated =
                                        AttendanceRecord.getDocumentFromData(
                                            createAttendanceRecordData(
                                              status: true,
                                              note: '\" \"',
                                              dayId: dateTimeFormat(
                                                "dd-MM-y",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              checkInTime: getCurrentTimestamp
                                                  .millisecondsSinceEpoch,
                                              checkOutTime: 0,
                                              outletId: FFAppState()
                                                  .outletDetails
                                                  .outletId,
                                              yearId: dateTimeFormat(
                                                "y",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              monthId: dateTimeFormat(
                                                "MM-y",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              userId: FFAppState().userDoc.id,
                                              createdDate: getCurrentTimestamp,
                                              isPresent: true,
                                              userName:
                                                  FFAppState().userDoc.name,
                                              checkInLocation:
                                                  currentUserLocationValue
                                                      ?.toString(),
                                              checkInLocationDetails:
                                                  createLocationDetailsStruct(
                                                name: getJsonField(
                                                  _model.location,
                                                  r'''$.name''',
                                                ).toString(),
                                                street: getJsonField(
                                                  _model.location,
                                                  r'''$.street''',
                                                ).toString(),
                                                locality: getJsonField(
                                                  _model.location,
                                                  r'''$.locality''',
                                                ).toString(),
                                                subLocality: getJsonField(
                                                  _model.location,
                                                  r'''$.subLocality''',
                                                ).toString(),
                                                postalCode: getJsonField(
                                                  _model.location,
                                                  r'''$.postalCode''',
                                                ).toString(),
                                                device: 'MOBILE',
                                                clearUnsetFields: false,
                                                create: true,
                                              ),
                                            ),
                                            attendanceRecordReference);

                                    await _model.nodocNewCreated!.reference
                                        .update(createAttendanceRecordData(
                                      id: _model.nodocNewCreated?.reference.id,
                                    ));
                                    _model.isCheckingIn = false;
                                    safeSetState(() {});
                                    context.safePop();
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: SuccessAttendanceWidget(),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));

                                    if (valueOrDefault<bool>(
                                      functions.checkPermissions(
                                          Permissions.CRM_BACKGROUND_TRACK.name,
                                          FFAppState()
                                              .userDoc
                                              .permissions
                                              .where((e) =>
                                                  e.outletId ==
                                                  FFAppState()
                                                      .outletDetails
                                                      .outletId)
                                              .toList()
                                              .firstOrNull
                                              ?.outletPermissions
                                              ?.toList()),
                                      false,
                                    )) {
                                      await actions.saveUserDataWithOutlet(
                                        FFAppState().userDoc,
                                        FFAppState().outletDetails.outletId,
                                      );
                                      await actions.startBackgroundTracking();
                                      FFAppState().enabled = true;
                                      safeSetState(() {});
                                    }
                                    triggerPushNotification(
                                      notificationTitle: '✅ Check-In Recorded',
                                      notificationText:
                                          '${FFAppState().userDoc.name}   checked in at ${dateTimeFormat(
                                        "yMMMd",
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )} ${dateTimeFormat(
                                        "jms",
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}',
                                      userRefs: [
                                        functions.getnotificationuidRef(
                                            FFAppState().managerUid)
                                      ],
                                      initialPageName: 'MyAttendence',
                                      parameterData: {},
                                    );
                                    Navigator.pop(context);
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: SuccessAttendanceWidget(),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }
                                }

                                safeSetState(() {});
                              },
                              text: _model.isCheckingIn == true
                                  ? 'Wait...'
                                  : 'Check In',
                              icon: Icon(
                                Icons.login_rounded,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 40.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.lexend(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.isCheckingIn == true)
                            FFButtonWidget(
                              onPressed: () {
                                print('checkingInButton pressed ...');
                              },
                              text: FFLocalizations.of(context).getText(
                                '7d3jn0cr' /* Please wait... */,
                              ),
                              icon: Icon(
                                Icons.login_rounded,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 40.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconColor: Color(0xFF090202),
                                color: Color(0xFFCFCECE),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.lexend(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF110202),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                        ],
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(Takeleave1Widget.routeName);

                        Navigator.pop(context);
                      },
                      text: FFLocalizations.of(context).getText(
                        'c649u9pj' /* Leave */,
                      ),
                      icon: Icon(
                        Icons.logout_rounded,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 140.0,
                        height: 40.0,
                        padding: EdgeInsets.all(8.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              font: GoogleFonts.lexend(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).customColor1,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
