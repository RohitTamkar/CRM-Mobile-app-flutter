import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetUserSettingCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserSetting',
      apiUrl:
          'https://asia-south1-project-backup-21.cloudfunctions.net/getUserAccessNSettings',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserAccessNSettingsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? access = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": ${userId == null ? 'null' : '"${userId}"'},
  "access": ${access == null ? 'null' : '"${access}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserAccessNSettings',
      apiUrl:
          'https://asia-south1-project-backup-21.cloudfunctions.net/updateUserAccessNSettings',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductSaleShiftIdWiseCall {
  static Future<ApiCallResponse> call({
    String? outletId = '',
    String? dayId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductSaleShiftIdWise',
      apiUrl:
          'https://asia-south1-sensiblebizpro.cloudfunctions.net/getProductSaleDayWise',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'dayId': dayId,
        'outletId': outletId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? list(dynamic response) => getJsonField(
        response,
        r'''$.*.details[:].products[:]''',
        true,
      ) as List?;
}

class GetDeviceCall {
  static Future<ApiCallResponse> call({
    String? deviceId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDevice',
      apiUrl: 'https://asia-south1-sensiblebizpro.cloudfunctions.net/getDevice',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'deviceId': deviceId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DistanceMatrixApiCall {
  static Future<ApiCallResponse> call({
    String? destinations = '',
    String? origins = '',
    String? key = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DistanceMatrixApiCall',
        'variables': {
          'destinations': destinations,
          'origins': origins,
          'key': key,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class DistanceCall {
  static Future<ApiCallResponse> call({
    String? message = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'distance',
      apiUrl:
          'https://asia-south1-sensiblebizpro.cloudfunctions.net/calculateDistance',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'message': message,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogOutSessionApiCallCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'logOutSessionApiCall',
      apiUrl:
          'https://asia-south1-sconnect-pos.cloudfunctions.net/logoutFromOtherDevices',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendWhatsappCall {
  static Future<ApiCallResponse> call({
    String? userMobileNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userMobileNumber": ${userMobileNumber == null ? 'null' : '"${userMobileNumber}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendWhatsapp',
      apiUrl:
          'https://asia-south1-sensiblebizpro.cloudfunctions.net/msg91Whatsapp/send_info_whatsapp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NearByCall {
  static Future<ApiCallResponse> call({
    String? postalCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'nearBy',
      apiUrl: 'https://asia-south1-sconnect-pos.cloudfunctions.net/getNearBy',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'postalCode': postalCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendMailCall {
  static Future<ApiCallResponse> call({
    String? outletName = '',
    String? file = '',
    String? fileName = '',
    String? toEmail = '',
    String? branchName = '',
    String? username = '',
    String? mobileNo = '',
    String? roll = '',
    String? reportType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "outletName": ${outletName == null ? 'null' : '"${outletName}"'},
  "branchName": ${branchName == null ? 'null' : '"${branchName}"'},
  "userName": ${username == null ? 'null' : '"${username}"'},
  "userMobileNumber": ${mobileNo == null ? 'null' : '"${mobileNo}"'},
  "userRoll": ${roll == null ? 'null' : '"${roll}"'},
  "reportType":${reportType == null ? 'null' : '"${reportType}"'},
  "file": ${file == null ? 'null' : '"${file}"'},
  "fileName": ${fileName == null ? 'null' : '"${fileName}"'},
  "toEmail": ${toEmail == null ? 'null' : '"${toEmail}"'},
  "ccEmail": "rohit.sensibleconnect@gmail.com"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendMail',
      apiUrl:
          'https://asia-south1-sconnect-pos.cloudfunctions.net/msg91Mail/send_mail',
      callType: ApiCallType.POST,
      headers: {
        'Access-Control-Allow-Origin':
            'https://ff-debug-service-frontend-pro-ygxkweukma-uc.a.run.app',
        'Access-Control-Allow-Headers': 'Content-Type',
        'Access-Control-Allow-Methods': 'POST',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCountriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountries',
      apiUrl: 'https://api.countrystatecity.in/v1/countries',
      callType: ApiCallType.GET,
      headers: {
        'X-CSCAPI-KEY':
            'ZW5zMWd1N2ptU3MwaWhuS1RlTlBIcHFTcU9ZQmxHUG04djVxY09LYw==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBiometricAttCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBiometricAtt',
      apiUrl:
          'https://asia-south1-sensiblebizpro.cloudfunctions.net/Ravi_Demo/api/filtered-logs',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTasksCall {
  static Future<ApiCallResponse> call({
    String? outletId = '',
    String? userId = '',
    int? taskDate,
    int? limit,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTasks',
      apiUrl:
          'https://sensible-crm-api-700529442570.asia-south1.run.app/api/v1/tasks',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'ouletId': outletId,
        'userId': userId,
        'taskDate': taskDate,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
