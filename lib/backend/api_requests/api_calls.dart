import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start VDMS API CALLS Group Code

class VdmsApiCallsGroup {
  static String getBaseUrl() => 'http://vdmsstaging.pvplglobal.com/api';
  static Map<String, String> headers = {};
  static ValidateLoginAPICall validateLoginAPICall = ValidateLoginAPICall();
  static GetAreasAPICall getAreasAPICall = GetAreasAPICall();
  static GetCaseAPICall getCaseAPICall = GetCaseAPICall();
  static GetNotificationsAPICall getNotificationsAPICall =
      GetNotificationsAPICall();
  static GetCaseHistoryAPICall getCaseHistoryAPICall = GetCaseHistoryAPICall();
  static SaveRemarkAPICall saveRemarkAPICall = SaveRemarkAPICall();
  static GetFieldEngineerTravelLogsCall getFieldEngineerTravelLogsCall =
      GetFieldEngineerTravelLogsCall();
  static CheckFieldEngineerTravelStatusCall checkFieldEngineerTravelStatusCall =
      CheckFieldEngineerTravelStatusCall();
  static SaveStartEndDayReadingAPICall saveStartEndDayReadingAPICall =
      SaveStartEndDayReadingAPICall();
  static SubmitSurveyAPICall submitSurveyAPICall = SubmitSurveyAPICall();
  static GetNotificationsCountAPICall getNotificationsCountAPICall =
      GetNotificationsCountAPICall();
  static SaveSurveyLocationAPICall saveSurveyLocationAPICall =
      SaveSurveyLocationAPICall();
}

class ValidateLoginAPICall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? password = '',
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'validateLoginAPI',
      apiUrl: '$baseUrl/validateLoginAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTcyMTg4OTU2OQ==',
        'correlation_id': 'hfsu8ydfQG',
        'app_version': '2.1',
        'api_version': '1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'userId': userId,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic loginAPIResponse(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  String? loginUserId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.userId''',
      ));
  String? loginUserName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.firstName''',
      ));
  dynamic loginAPIError(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class GetAreasAPICall {
  Future<ApiCallResponse> call() async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAreasAPI',
      apiUrl: '$baseUrl/getAreasAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic getAreasAPIResponse(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List? getAreasAPIStates(dynamic response) => getJsonField(
        response,
        r'''$.response.states''',
        true,
      ) as List?;
  List<String>? getAreasAPIStatesName(dynamic response) => (getJsonField(
        response,
        r'''$.response.states[:].state_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? getAreasAPIStatesValues(dynamic response) => (getJsonField(
        response,
        r'''$.response.states[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? getAreasAPIStatesAreas(dynamic response) => getJsonField(
        response,
        r'''$.response.states[:].areas''',
        true,
      ) as List?;
  dynamic getAreasAPIError(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class GetCaseAPICall {
  Future<ApiCallResponse> call({
    String? filters = '{\"caseStatus\":\"2\"}',
    int? userId,
    int? limit = 10,
    int? page = 1,
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCaseAPI',
      apiUrl: '$baseUrl/getCasesAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTcyMTkyNzA4OA==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'filters': filters,
        'userId': userId,
        'limit': limit,
        'page': page,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotificationsAPICall {
  Future<ApiCallResponse> call({
    int? page = 1,
    int? limit = 10,
    int? userId,
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getNotificationsAPI',
      apiUrl: '$baseUrl/getNotificationsAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'page': page,
        'limit': limit,
        'userId': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? getNotificationAPIRESPONSE(dynamic response) => getJsonField(
        response,
        r'''$.response''',
        true,
      ) as List?;
}

class GetCaseHistoryAPICall {
  Future<ApiCallResponse> call({
    int? page = 1,
    int? limit = 10,
    int? userId,
    int? caseId,
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCaseHistoryAPI',
      apiUrl: '$baseUrl/getCaseHistoryAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'page': page,
        'limit': limit,
        'userId': userId,
        'caseId': caseId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? getCaseHistoryResponse(dynamic response) => getJsonField(
        response,
        r'''$.response''',
        true,
      ) as List?;
}

class SaveRemarkAPICall {
  Future<ApiCallResponse> call({
    String? remark = '',
    int? userId,
    int? caseId,
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'saveRemarkAPI',
      apiUrl: '$baseUrl/saveRemark',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'remark': remark,
        'userId': userId,
        'caseId': caseId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? saveRemarkResponseMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.message''',
      ));
}

class GetFieldEngineerTravelLogsCall {
  Future<ApiCallResponse> call({
    int? fieldEngineerId,
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getFieldEngineerTravelLogs',
      apiUrl: '$baseUrl/getFieldEngineerTravelLogs',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'field_engineer_id': fieldEngineerId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckFieldEngineerTravelStatusCall {
  Future<ApiCallResponse> call({
    int? fieldEngineerId,
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'checkFieldEngineerTravelStatus',
      apiUrl: '$baseUrl/checkFieldEngineerTravelStatus',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'field_engineer_id': fieldEngineerId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveStartEndDayReadingAPICall {
  Future<ApiCallResponse> call({
    String? type = '',
    int? fieldEngineerId,
    int? meterReading,
    FFUploadedFile? meterReadingImage,
    String? datetime = '',
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'saveStartEndDayReadingAPI',
      apiUrl: '$baseUrl/saveStartEndDayReading',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'type': type,
        'field_engineer_id': fieldEngineerId,
        'meter_reading': meterReading,
        'meter_reading_image': meterReadingImage,
        'datetime': datetime,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitSurveyAPICall {
  Future<ApiCallResponse> call({
    int? userId,
    int? caseId,
    String? timestamp = '',
    String? inspectionFormData = '',
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'submitSurveyAPI',
      apiUrl: '$baseUrl/submitSurveyAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'userId': userId,
        'caseId': caseId,
        'timestamp': timestamp,
        'inspectionFormData': inspectionFormData,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotificationsCountAPICall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getNotificationsCountAPI',
      apiUrl: '$baseUrl/getNotificationsCountAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'device_id': '96db57db06605205',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'userId': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveSurveyLocationAPICall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? caseId = '',
    String? longitude = '',
    String? latitude = '',
  }) async {
    final baseUrl = VdmsApiCallsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'saveSurveyLocationAPI',
      apiUrl: '$baseUrl/saveSurveyLocationAPI',
      callType: ApiCallType.POST,
      headers: {
        'api_token': 'MTY5NTEzMzY5NzExMw==',
        'correlation_id': 'zSF1clTyQX',
        'api_version': '2.1',
        'app_version_code': '1',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'userId': userId,
        'caseId': caseId,
        'longitude': longitude,
        'latitude': latitude,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  String? responseMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.message''',
      ));
}

/// End VDMS API CALLS Group Code

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
