// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationResponseDataStruct extends BaseStruct {
  NotificationResponseDataStruct({
    String? message,
  }) : _message = message;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static NotificationResponseDataStruct fromMap(Map<String, dynamic> data) =>
      NotificationResponseDataStruct(
        message: data['message'] as String?,
      );

  static NotificationResponseDataStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? NotificationResponseDataStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationResponseDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationResponseDataStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationResponseDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationResponseDataStruct && message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([message]);
}

NotificationResponseDataStruct createNotificationResponseDataStruct({
  String? message,
}) =>
    NotificationResponseDataStruct(
      message: message,
    );
