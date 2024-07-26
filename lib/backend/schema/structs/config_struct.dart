// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfigStruct extends BaseStruct {
  ConfigStruct({
    bool? apiStatus,
    int? minSupportVersion,
  })  : _apiStatus = apiStatus,
        _minSupportVersion = minSupportVersion;

  // "apiStatus" field.
  bool? _apiStatus;
  bool get apiStatus => _apiStatus ?? true;
  set apiStatus(bool? val) => _apiStatus = val;

  bool hasApiStatus() => _apiStatus != null;

  // "minSupportVersion" field.
  int? _minSupportVersion;
  int get minSupportVersion => _minSupportVersion ?? 0;
  set minSupportVersion(int? val) => _minSupportVersion = val;

  void incrementMinSupportVersion(int amount) =>
      minSupportVersion = minSupportVersion + amount;

  bool hasMinSupportVersion() => _minSupportVersion != null;

  static ConfigStruct fromMap(Map<String, dynamic> data) => ConfigStruct(
        apiStatus: data['apiStatus'] as bool?,
        minSupportVersion: castToType<int>(data['minSupportVersion']),
      );

  static ConfigStruct? maybeFromMap(dynamic data) =>
      data is Map ? ConfigStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'apiStatus': _apiStatus,
        'minSupportVersion': _minSupportVersion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'apiStatus': serializeParam(
          _apiStatus,
          ParamType.bool,
        ),
        'minSupportVersion': serializeParam(
          _minSupportVersion,
          ParamType.int,
        ),
      }.withoutNulls;

  static ConfigStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConfigStruct(
        apiStatus: deserializeParam(
          data['apiStatus'],
          ParamType.bool,
          false,
        ),
        minSupportVersion: deserializeParam(
          data['minSupportVersion'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ConfigStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConfigStruct &&
        apiStatus == other.apiStatus &&
        minSupportVersion == other.minSupportVersion;
  }

  @override
  int get hashCode => const ListEquality().hash([apiStatus, minSupportVersion]);
}

ConfigStruct createConfigStruct({
  bool? apiStatus,
  int? minSupportVersion,
}) =>
    ConfigStruct(
      apiStatus: apiStatus,
      minSupportVersion: minSupportVersion,
    );
