// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnyOtherInfoResponseStruct extends BaseStruct {
  AnyOtherInfoResponseStruct({
    String? info,
  }) : _info = info;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  set info(String? val) => _info = val;

  bool hasInfo() => _info != null;

  static AnyOtherInfoResponseStruct fromMap(Map<String, dynamic> data) =>
      AnyOtherInfoResponseStruct(
        info: data['info'] as String?,
      );

  static AnyOtherInfoResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AnyOtherInfoResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'info': _info,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'info': serializeParam(
          _info,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnyOtherInfoResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AnyOtherInfoResponseStruct(
        info: deserializeParam(
          data['info'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnyOtherInfoResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnyOtherInfoResponseStruct && info == other.info;
  }

  @override
  int get hashCode => const ListEquality().hash([info]);
}

AnyOtherInfoResponseStruct createAnyOtherInfoResponseStruct({
  String? info,
}) =>
    AnyOtherInfoResponseStruct(
      info: info,
    );
