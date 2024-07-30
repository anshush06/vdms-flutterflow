// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetNotificationApiResponseStruct extends BaseStruct {
  GetNotificationApiResponseStruct({
    List<GetNotificationApiResponseStruct>? notificationResponse,
  }) : _notificationResponse = notificationResponse;

  // "notificationResponse" field.
  List<GetNotificationApiResponseStruct>? _notificationResponse;
  List<GetNotificationApiResponseStruct> get notificationResponse =>
      _notificationResponse ?? const [];
  set notificationResponse(List<GetNotificationApiResponseStruct>? val) =>
      _notificationResponse = val;

  void updateNotificationResponse(
      Function(List<GetNotificationApiResponseStruct>) updateFn) {
    updateFn(_notificationResponse ??= []);
  }

  bool hasNotificationResponse() => _notificationResponse != null;

  static GetNotificationApiResponseStruct fromMap(Map<String, dynamic> data) =>
      GetNotificationApiResponseStruct(
        notificationResponse: getStructList(
          data['notificationResponse'],
          GetNotificationApiResponseStruct.fromMap,
        ),
      );

  static GetNotificationApiResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? GetNotificationApiResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'notificationResponse':
            _notificationResponse?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'notificationResponse': serializeParam(
          _notificationResponse,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static GetNotificationApiResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetNotificationApiResponseStruct(
        notificationResponse:
            deserializeStructParam<GetNotificationApiResponseStruct>(
          data['notificationResponse'],
          ParamType.DataStruct,
          true,
          structBuilder: GetNotificationApiResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GetNotificationApiResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GetNotificationApiResponseStruct &&
        listEquality.equals(notificationResponse, other.notificationResponse);
  }

  @override
  int get hashCode => const ListEquality().hash([notificationResponse]);
}

GetNotificationApiResponseStruct createGetNotificationApiResponseStruct() =>
    GetNotificationApiResponseStruct();
