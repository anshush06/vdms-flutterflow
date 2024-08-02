// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelLogStruct extends BaseStruct {
  TravelLogStruct({
    ConfigStruct? config,
    ErrorStruct? error,
    List<TravelLogResponseStruct>? response,
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
  List<TravelLogResponseStruct>? _response;
  List<TravelLogResponseStruct> get response => _response ?? const [];
  set response(List<TravelLogResponseStruct>? val) => _response = val;

  void updateResponse(Function(List<TravelLogResponseStruct>) updateFn) {
    updateFn(_response ??= []);
  }

  bool hasResponse() => _response != null;

  static TravelLogStruct fromMap(Map<String, dynamic> data) => TravelLogStruct(
        config: ConfigStruct.maybeFromMap(data['config']),
        error: ErrorStruct.maybeFromMap(data['error']),
        response: getStructList(
          data['response'],
          TravelLogResponseStruct.fromMap,
        ),
      );

  static TravelLogStruct? maybeFromMap(dynamic data) => data is Map
      ? TravelLogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'config': _config?.toMap(),
        'error': _error?.toMap(),
        'response': _response?.map((e) => e.toMap()).toList(),
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
          isList: true,
        ),
      }.withoutNulls;

  static TravelLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      TravelLogStruct(
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
        response: deserializeStructParam<TravelLogResponseStruct>(
          data['response'],
          ParamType.DataStruct,
          true,
          structBuilder: TravelLogResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TravelLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TravelLogStruct &&
        config == other.config &&
        error == other.error &&
        listEquality.equals(response, other.response);
  }

  @override
  int get hashCode => const ListEquality().hash([config, error, response]);
}

TravelLogStruct createTravelLogStruct({
  ConfigStruct? config,
  ErrorStruct? error,
}) =>
    TravelLogStruct(
      config: config ?? ConfigStruct(),
      error: error ?? ErrorStruct(),
    );
