// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErrorStruct extends BaseStruct {
  ErrorStruct({
    String? message,
  }) : _message = message;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static ErrorStruct fromMap(Map<String, dynamic> data) => ErrorStruct(
        message: data['message'] as String?,
      );

  static ErrorStruct? maybeFromMap(dynamic data) =>
      data is Map ? ErrorStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static ErrorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ErrorStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ErrorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ErrorStruct && message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([message]);
}

ErrorStruct createErrorStruct({
  String? message,
}) =>
    ErrorStruct(
      message: message,
    );
