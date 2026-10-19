import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    await _handlePushNotificationData(message.data);
  }

  Future _handlePushNotificationData(Map<String, dynamic> messageData) async {
    safeSetState(() => _loading = true);
    try {
      final initialPageName = messageData['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(messageData);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 30.0,
            height: 30.0,
            child: SpinKitPulse(
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'LoginPage': ParameterData.none(),
  'OTPPage': ParameterData.none(),
  'AddUserProfile': ParameterData.none(),
  'Addoutlet': ParameterData.none(),
  'OnboardingPage': ParameterData.none(),
  'CreateExpenseCategory': ParameterData.none(),
  'ExpenseCategory': ParameterData.none(),
  'ExpenseCategoryList': ParameterData.none(),
  'ExpenseHistory': ParameterData.none(),
  'ExpenseItem': ParameterData.none(),
  'MoreExpenseOptions': ParameterData.none(),
  'ExpenseList': ParameterData.none(),
  'Outletlist': ParameterData.none(),
  'RecordExpense': ParameterData.none(),
  'UserExpensesOfficial': (data) async => ParameterData(
        allParams: {
          'userId': getParameter<String>(data, 'userId'),
        },
      ),
  'TodaysActivity': ParameterData.none(),
  'LeadLog2': (data) async => ParameterData(
        allParams: {
          'leaddetails': await getDocumentParameter<LeadsManagementRecord>(
              data, 'leaddetails', LeadsManagementRecord.fromSnapshot),
        },
      ),
  'MyAttendence': ParameterData.none(),
  'takeleave1': ParameterData.none(),
  'loading': ParameterData.none(),
  'PaymentModeOption': ParameterData.none(),
  'AddExpense': ParameterData.none(),
  'ExpenseInstruction': ParameterData.none(),
  'AttendenceDashboard': ParameterData.none(),
  'LeaveStatus': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
        },
      ),
  'master': ParameterData.none(),
  'AddNewLead': ParameterData.none(),
  'FollowUp': ParameterData.none(),
  'Lost': ParameterData.none(),
  'WinLead': ParameterData.none(),
  'notification': ParameterData.none(),
  'menu': ParameterData.none(),
  'AlertPopupPage': ParameterData.none(),
  'LinkDevice': ParameterData.none(),
  'CalenderPage': ParameterData.none(),
  'ReportPage': ParameterData.none(),
  'ComplaintReport': ParameterData.none(),
  'NoInternetConnection': ParameterData.none(),
  'NoDataFound': ParameterData.none(),
  'PaymentHistory': ParameterData.none(),
  'HolidayCalender': ParameterData.none(),
  'EditUserProfile': (data) async => ParameterData(
        allParams: {
          'nextP': getParameter<int>(data, 'nextP'),
          'id': getParameter<String>(data, 'id'),
          'mobile': getParameter<String>(data, 'mobile'),
        },
      ),
  'userAccount': ParameterData.none(),
  'LeaveRequest': ParameterData.none(),
  'ImageUploadTest': ParameterData.none(),
  'productDetailsKiosk': ParameterData.none(),
  'productDetailsSens10': ParameterData.none(),
  'ProductDetailsElite': ParameterData.none(),
  'expenseDetails': ParameterData.none(),
  'flashscreen1': ParameterData.none(),
  'CreateLeaveType': ParameterData.none(),
  'ProductDetails': ParameterData.none(),
  'ProductCatalog': ParameterData.none(),
  'DashBoardWithoutRole': ParameterData.none(),
  'LeadManagementUser': ParameterData.none(),
  'ExpenseDashboard2': ParameterData.none(),
  'Profile2': ParameterData.none(),
  'AddTasks': ParameterData.none(),
  'sds': ParameterData.none(),
  'loadinguser': ParameterData.none(),
  'VisitingCard': ParameterData.none(),
  'AddUserProfileWithOutRole': ParameterData.none(),
  'SetUpYourOutlet': ParameterData.none(),
  'Dashboard': ParameterData.none(),
  'LeadManagementPage': ParameterData.none(),
  'LeadManagementPageCopy': ParameterData.none(),
  'AttendenceDetails': ParameterData.none(),
  'AttendenceDashboardCopy': ParameterData.none(),
  'AttendenceDetailsCopy': ParameterData.none(),
  'AttendenceDetailsCopyCopy': ParameterData.none(),
  'LeadManagementSuperAdmin': ParameterData.none(),
  'LeaveApproval': ParameterData.none(),
  'VisitingCardOutput': ParameterData.none(),
  'New_Lead': ParameterData.none(),
  'takeleave': ParameterData.none(),
  'ContactManagementUser': (data) async => ParameterData(
        allParams: {
          'event': getParameter<String>(data, 'event'),
        },
      ),
  'ContactLog': (data) async => ParameterData(
        allParams: {
          'contactDetails': await getDocumentParameter<ContactsRecord>(
              data, 'contactDetails', ContactsRecord.fromSnapshot),
        },
      ),
  'EventwiseInterestedContact': (data) async => ParameterData(
        allParams: {
          'status': getParameter<String>(data, 'status'),
          'eventName': getParameter<String>(data, 'eventName'),
        },
      ),
  'ContactManagementSuperAdmin': ParameterData.none(),
  'Events': ParameterData.none(),
  'ContactsEventWise': (data) async => ParameterData(
        allParams: {
          'event': getParameter<String>(data, 'event'),
        },
      ),
  'TaskListPage': ParameterData.none(),
  'LeaveStatusSuperAdmin': ParameterData.none(),
  'TaskListSuperAdmin': ParameterData.none(),
  'TaskListSuperAdminCopy': ParameterData.none(),
  'CreateTask': ParameterData.none(),
  'UserWiseContact': ParameterData.none(),
  'ContactsEventWiseCopy': (data) async => ParameterData(
        allParams: {
          'event': getParameter<String>(data, 'event'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
