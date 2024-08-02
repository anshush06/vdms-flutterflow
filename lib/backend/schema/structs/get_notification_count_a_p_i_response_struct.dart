// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetNotificationCountAPIResponseStruct extends BaseStruct {
  GetNotificationCountAPIResponseStruct({
    String? userId,
    int? count,
  })  : _userId = userId,
        _count = count;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static GetNotificationCountAPIResponseStruct fromMap(
          Map<String, dynamic> data) =>
      GetNotificationCountAPIResponseStruct(
        userId: data['userId'] as String?,
        count: castToType<int>(data['count']),
      );

  static GetNotificationCountAPIResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? GetNotificationCountAPIResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static GetNotificationCountAPIResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetNotificationCountAPIResponseStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GetNotificationCountAPIResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetNotificationCountAPIResponseStruct &&
        userId == other.userId &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([userId, count]);
}

GetNotificationCountAPIResponseStruct
    createGetNotificationCountAPIResponseStruct({
  String? userId,
  int? count,
}) =>
        GetNotificationCountAPIResponseStruct(
          userId: userId,
          count: count,
        );
