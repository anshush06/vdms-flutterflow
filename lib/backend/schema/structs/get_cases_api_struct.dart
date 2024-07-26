// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetCasesApiStruct extends BaseStruct {
  GetCasesApiStruct({
    List<ResponseStruct>? response,
    ErrorStruct? error,
    ConfigStruct? config,
  })  : _response = response,
        _error = error,
        _config = config;

  // "response" field.
  List<ResponseStruct>? _response;
  List<ResponseStruct> get response => _response ?? const [];
  set response(List<ResponseStruct>? val) => _response = val;

  void updateResponse(Function(List<ResponseStruct>) updateFn) {
    updateFn(_response ??= []);
  }

  bool hasResponse() => _response != null;

  // "error" field.
  ErrorStruct? _error;
  ErrorStruct get error => _error ?? ErrorStruct();
  set error(ErrorStruct? val) => _error = val;

  void updateError(Function(ErrorStruct) updateFn) {
    updateFn(_error ??= ErrorStruct());
  }

  bool hasError() => _error != null;

  // "config" field.
  ConfigStruct? _config;
  ConfigStruct get config => _config ?? ConfigStruct();
  set config(ConfigStruct? val) => _config = val;

  void updateConfig(Function(ConfigStruct) updateFn) {
    updateFn(_config ??= ConfigStruct());
  }

  bool hasConfig() => _config != null;

  static GetCasesApiStruct fromMap(Map<String, dynamic> data) =>
      GetCasesApiStruct(
        response: getStructList(
          data['response'],
          ResponseStruct.fromMap,
        ),
        error: ErrorStruct.maybeFromMap(data['error']),
        config: ConfigStruct.maybeFromMap(data['config']),
      );

  static GetCasesApiStruct? maybeFromMap(dynamic data) => data is Map
      ? GetCasesApiStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'response': _response?.map((e) => e.toMap()).toList(),
        'error': _error?.toMap(),
        'config': _config?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
          isList: true,
        ),
        'error': serializeParam(
          _error,
          ParamType.DataStruct,
        ),
        'config': serializeParam(
          _config,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GetCasesApiStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetCasesApiStruct(
        response: deserializeStructParam<ResponseStruct>(
          data['response'],
          ParamType.DataStruct,
          true,
          structBuilder: ResponseStruct.fromSerializableMap,
        ),
        error: deserializeStructParam(
          data['error'],
          ParamType.DataStruct,
          false,
          structBuilder: ErrorStruct.fromSerializableMap,
        ),
        config: deserializeStructParam(
          data['config'],
          ParamType.DataStruct,
          false,
          structBuilder: ConfigStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GetCasesApiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GetCasesApiStruct &&
        listEquality.equals(response, other.response) &&
        error == other.error &&
        config == other.config;
  }

  @override
  int get hashCode => const ListEquality().hash([response, error, config]);
}

GetCasesApiStruct createGetCasesApiStruct({
  ErrorStruct? error,
  ConfigStruct? config,
}) =>
    GetCasesApiStruct(
      error: error ?? ErrorStruct(),
      config: config ?? ConfigStruct(),
    );
