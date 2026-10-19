import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_attendence_model.dart';
export 'my_attendence_model.dart';

class MyAttendenceWidget extends StatefulWidget {
  const MyAttendenceWidget({super.key});

  static String routeName = 'MyAttendence';
  static String routePath = 'myAttendence';

  @override
  State<MyAttendenceWidget> createState() => _MyAttendenceWidgetState();
}

class _MyAttendenceWidgetState extends State<MyAttendenceWidget> {
  late MyAttendenceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAttendenceModel());

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
        appBar: AppBar(
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
              context.pushNamed(DashboardWidget.routeName);
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
                  child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'br6hyl29' /* Attendance */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.lexend(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
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
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<AttendanceRecord>>(
            stream: queryAttendanceRecord(
              parent: FFAppState().outletDetails.outletIdRef,
              queryBuilder: (attendanceRecord) => attendanceRecord
                  .where(
                    'userId',
                    isEqualTo: FFAppState().userRef?.id,
                  )
                  .where(
                    'monthId',
                    isEqualTo: dateTimeFormat(
                      "MM-y",
                      getCurrentTimestamp,
                      locale: FFLocalizations.of(context).languageCode,
                    ),
                  ),
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
              List<AttendanceRecord> containerAttendanceRecordList =
                  snapshot.data!;

              return Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (valueOrDefault<bool>(
                              functions.checkPermissions(
                                  Permissions.CRM_LEAVE_VIEW.name,
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
                            ))
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    borderRadius: 12.0,
                                    buttonSize: 48.0,
                                    fillColor: Color(0xFF3D94DB),
                                    icon: Icon(
                                      Icons.send_to_mobile,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      if (FFAppState().role == 'USER') {
                                        context.pushNamed(
                                          LeaveStatusWidget.routeName,
                                          queryParameters: {
                                            'id': serializeParam(
                                              '',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        context.pushNamed(
                                            LeaveStatusSuperAdminWidget
                                                .routeName);
                                      }
                                    },
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'cr5yi4li' /* Leave */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.lexend(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).customColor1,
                                  borderRadius: 12.0,
                                  buttonSize: 48.0,
                                  fillColor: Color(0xFF1C9433),
                                  icon: Icon(
                                    Icons.account_balance_wallet_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                        HolidayCalenderWidget.routeName);
                                  },
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'gziumgwp' /* Holiday
Calender */
                                    ,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.lexend(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).customColor1,
                                  borderRadius: 12.0,
                                  buttonSize: 48.0,
                                  fillColor: Color(0xFF8400B6),
                                  icon: Icon(
                                    Icons.history,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'cda9s17q' /* Overtime */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.lexend(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dateTimeFormat(
                              "MMMM-y",
                              getCurrentTimestamp,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.lexend(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).customColor1,
                      ),
                      Flexible(
                        child: Builder(
                          builder: (context) {
                            final data = containerAttendanceRecordList
                                .sortedList(
                                    keyOf: (e) => e.createdDate!, desc: true)
                                .toList();

                            return FlutterFlowDataTable<AttendanceRecord>(
                              controller: _model.paginatedDataTableController,
                              data: data,
                              numRows: containerAttendanceRecordList.length,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'karb2eke' /* Date */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.lexend(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'koyxwffr' /* Punch In */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.lexend(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'b4f96qt4' /* Punch Out */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.lexend(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (dataItem, dataIndex, selected,
                                      onSelectChanged) =>
                                  DataRow(
                                color: MaterialStateProperty.all(
                                  dataIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                                cells: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 7.0, 0.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                            "d",
                                            dataItem.createdDate!,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.lexend(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                          "MM-y",
                                          dataItem.createdDate!,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.lexend(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                  Text(
                                    dataItem.checkInTime == 0
                                        ? '00:00'
                                        : dateTimeFormat(
                                            "jm",
                                            DateTime.fromMillisecondsSinceEpoch(
                                                dataItem.checkInTime),
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.lexend(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    dataItem.checkOutTime == 0
                                        ? '00:00'
                                        : dateTimeFormat(
                                            "jm",
                                            DateTime.fromMillisecondsSinceEpoch(
                                                dataItem.checkOutTime),
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.lexend(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].map((c) => DataCell(c)).toList(),
                              ),
                              paginated: false,
                              selectable: false,
                              headingRowHeight: 56.0,
                              dataRowHeight: 48.0,
                              columnSpacing: 20.0,
                              headingRowColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: true,
                              hideDefaultHorizontalDivider: false,
                              horizontalDividerColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              horizontalDividerThickness: 1.0,
                              addVerticalDivider: false,
                            );
                          },
                        ),
                      ),
                      if (valueOrDefault<bool>(
                        functions.checkPermissions(
                            Permissions.CRM_ATTENDANCE_MARK.name,
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
                      ))
                        FFButtonWidget(
                          onPressed: () async {
                            currentUserLocationValue =
                                await getCurrentUserLocation(
                                    defaultLocation: LatLng(0.0, 0.0));
                            var _shouldSetState = false;
                            if (isWeb) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Work only mobile',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              Navigator.pop(context);
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              _model.location = await actions.getAddress(
                                currentUserLocationValue!,
                              );
                              _shouldSetState = true;
                              _model.todayAttendanceout =
                                  await queryAttendanceRecordOnce(
                                parent: FFAppState().outletDetails.outletIdRef,
                                queryBuilder: (attendanceRecord) =>
                                    attendanceRecord
                                        .where(
                                          'userId',
                                          isEqualTo: FFAppState().userDoc.id,
                                        )
                                        .where(
                                          'dayId',
                                          isEqualTo: dateTimeFormat(
                                            "dd-MM-y",
                                            getCurrentTimestamp,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                        ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              _shouldSetState = true;
                              if (FFAppState().outletDetails.outletId != null &&
                                  FFAppState().outletDetails.outletId != '') {
                                if (_model.todayAttendanceout?.id == null ||
                                    _model.todayAttendanceout?.id == '') {
                                  var confirmDialogResponse = await showDialog<
                                          bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title:
                                                Text('Check In Confirmation !'),
                                            content: Text(
                                                'Are you sure you want to Check In ?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                                  if (!confirmDialogResponse) {
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  var attendanceRecordReference =
                                      AttendanceRecord.createDoc(FFAppState()
                                          .outletDetails
                                          .outletIdRef!);
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
                                            userName: FFAppState().userDoc.name,
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
                                  _shouldSetState = true;

                                  await _model.nodocNewCreated!.reference
                                      .update(createAttendanceRecordData(
                                    id: _model.nodocNewCreated?.reference.id,
                                  ));
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
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Check In Successful',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  if (_model.todayAttendanceout?.checkOutTime ==
                                      0) {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(
                                                      'Check Out Confirmation !'),
                                                  content: Text(
                                                      'Are you sure you want to Check Out ?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: Text('Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: Text('Confirm'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (!confirmDialogResponse) {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    await _model.todayAttendanceout!.reference
                                        .update(createAttendanceRecordData(
                                      checkOutTime: getCurrentTimestamp
                                          .millisecondsSinceEpoch,
                                      checkOutLocation:
                                          currentUserLocationValue?.toString(),
                                      status: true,
                                      checkOutLocationDetails:
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
                                      ),
                                    ));
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
                                      await actions.stopBackgroundTracking();
                                      FFAppState().enabled = false;
                                      safeSetState(() {});
                                    }
                                    triggerPushNotification(
                                      notificationTitle: '✅ Check-Out Recorded',
                                      notificationText:
                                          '${FFAppState().userDoc.name}  checked out at   ${dateTimeFormat(
                                        "d/M h:mm a",
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
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Check Out Is Successful',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Already Checked Out !',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }
                                }
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Outlet is not set!!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'xnxngnm8' /* Check In / Check Out */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
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
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
