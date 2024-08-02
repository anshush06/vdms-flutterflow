// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetNotificationCountAPIStruct extends BaseStruct {
  GetNotificationCountAPIStruct({
    ConfigStruct? config,
    ErrorStruct? error,
    GetNotificationCountAPIResponseStruct? response,
  })  : _config = config,
        _error = error,
        _response = response;

  // "config" field.
  ConfigStruct? _config;
  ConfigStruct get config => _config ?? ConfigStruct();
  set config(ConfigStruct? val) => _config = val;

  void updateConfig(Function(ConfigStruct) updateFn) {
    updateFn(_config ??= ConfigStruct());
  }

  bool hasConfig() => _config != null;

  // "error" field.
  ErrorStruct? _error;
  ErrorStruct get error => _error ?? ErrorStruct();
  set error(ErrorStruct? val) => _error = val;

  void updateError(Function(ErrorStruct) updateFn) {
    updateFn(_error ??= ErrorStruct());
  }

  bool hasError() => _error != null;

  // "response" field.
  GetNotificationCountAPIResponseStruct? _response;
  GetNotificationCountAPIResponseStruct get response =>
      _response ?? GetNotificationCountAPIResponseStruct();
  set response(GetNotificationCountAPIResponseStruct? val) => _response = val;

  void updateResponse(
      Function(GetNotificationCountAPIResponseStruct) updateFn) {
    updateFn(_response ??= GetNotificationCountAPIResponseStruct());
  }

  bool hasResponse() => _response != null;

  static GetNotificationCountAPIStruct fromMap(Map<String, dynamic> data) =>
      GetNotificationCountAPIStruct(
        config: ConfigStruct.maybeFromMap(data['config']),
        error: ErrorStruct.maybeFromMap(data['error']),
        response: GetNotificationCountAPIResponseStruct.maybeFromMap(
            data['response']),
      );

  static GetNotificationCountAPIStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? GetNotificationCountAPIStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'config': _config?.toMap(),
        'error': _error?.toMap(),
        'response': _response?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'config': serializeParam(
          _config,
          ParamType.DataStruct,
        ),
        'error': serializeParam(
          _error,
          ParamType.DataStruct,
        ),
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GetNotificationCountAPIStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetNotificationCountAPIStruct(
        config: deserializeStructParam(
          data['config'],
          ParamType.DataStruct,
          false,
          structBuilder: ConfigStruct.fromSerializableMap,
        ),
        error: deserializeStructParam(
          data['error'],
          ParamType.DataStruct,
          false,
          structBuilder: ErrorStruct.fromSerializableMap,
        ),
        response: deserializeStructParam(
          data['response'],
          ParamType.DataStruct,
          false,
          structBuilder:
              GetNotificationCountAPIResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GetNotificationCountAPIStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetNotificationCountAPIStruct &&
        config == other.config &&
        error == other.error &&
        response == other.response;
  }

  @override
  int get hashCode => const ListEquality().hash([config, error, response]);
}

GetNotificationCountAPIStruct createGetNotificationCountAPIStruct({
  ConfigStruct? config,
  ErrorStruct? error,
  GetNotificationCountAPIResponseStruct? response,
}) =>
    GetNotificationCountAPIStruct(
      config: config ?? ConfigStruct(),
      error: error ?? ErrorStruct(),
      response: response ?? GetNotificationCountAPIResponseStruct(),
    );
