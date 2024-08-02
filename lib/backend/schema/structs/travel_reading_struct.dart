// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelReadingStruct extends BaseStruct {
  TravelReadingStruct({
    ConfigStruct? config,
    ErrorStruct? error,
    TravelReadingResponseStruct? response,
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
  TravelReadingResponseStruct? _response;
  TravelReadingResponseStruct get response =>
      _response ?? TravelReadingResponseStruct();
  set response(TravelReadingResponseStruct? val) => _response = val;

  void updateResponse(Function(TravelReadingResponseStruct) updateFn) {
    updateFn(_response ??= TravelReadingResponseStruct());
  }

  bool hasResponse() => _response != null;

  static TravelReadingStruct fromMap(Map<String, dynamic> data) =>
      TravelReadingStruct(
        config: ConfigStruct.maybeFromMap(data['config']),
        error: ErrorStruct.maybeFromMap(data['error']),
        response: TravelReadingResponseStruct.maybeFromMap(data['response']),
      );

  static TravelReadingStruct? maybeFromMap(dynamic data) => data is Map
      ? TravelReadingStruct.fromMap(data.cast<String, dynamic>())
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

  static TravelReadingStruct fromSerializableMap(Map<String, dynamic> data) =>
      TravelReadingStruct(
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
          structBuilder: TravelReadingResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TravelReadingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TravelReadingStruct &&
        config == other.config &&
        error == other.error &&
        response == other.response;
  }

  @override
  int get hashCode => const ListEquality().hash([config, error, response]);
}

TravelReadingStruct createTravelReadingStruct({
  ConfigStruct? config,
  ErrorStruct? error,
  TravelReadingResponseStruct? response,
}) =>
    TravelReadingStruct(
      config: config ?? ConfigStruct(),
      error: error ?? ErrorStruct(),
      response: response ?? TravelReadingResponseStruct(),
    );
