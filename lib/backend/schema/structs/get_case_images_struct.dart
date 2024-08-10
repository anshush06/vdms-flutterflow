// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetCaseImagesStruct extends BaseStruct {
  GetCaseImagesStruct({
    ErrorStruct? error,
    ConfigStruct? config,
    List<GetCaseImagesResponseStruct>? response,
  })  : _error = error,
        _config = config,
        _response = response;

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

  // "response" field.
  List<GetCaseImagesResponseStruct>? _response;
  List<GetCaseImagesResponseStruct> get response => _response ?? const [];
  set response(List<GetCaseImagesResponseStruct>? val) => _response = val;

  void updateResponse(Function(List<GetCaseImagesResponseStruct>) updateFn) {
    updateFn(_response ??= []);
  }

  bool hasResponse() => _response != null;

  static GetCaseImagesStruct fromMap(Map<String, dynamic> data) =>
      GetCaseImagesStruct(
        error: ErrorStruct.maybeFromMap(data['error']),
        config: ConfigStruct.maybeFromMap(data['config']),
        response: getStructList(
          data['response'],
          GetCaseImagesResponseStruct.fromMap,
        ),
      );

  static GetCaseImagesStruct? maybeFromMap(dynamic data) => data is Map
      ? GetCaseImagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'error': _error?.toMap(),
        'config': _config?.toMap(),
        'response': _response?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'error': serializeParam(
          _error,
          ParamType.DataStruct,
        ),
        'config': serializeParam(
          _config,
          ParamType.DataStruct,
        ),
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static GetCaseImagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetCaseImagesStruct(
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
        response: deserializeStructParam<GetCaseImagesResponseStruct>(
          data['response'],
          ParamType.DataStruct,
          true,
          structBuilder: GetCaseImagesResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GetCaseImagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GetCaseImagesStruct &&
        error == other.error &&
        config == other.config &&
        listEquality.equals(response, other.response);
  }

  @override
  int get hashCode => const ListEquality().hash([error, config, response]);
}

GetCaseImagesStruct createGetCaseImagesStruct({
  ErrorStruct? error,
  ConfigStruct? config,
}) =>
    GetCaseImagesStruct(
      error: error ?? ErrorStruct(),
      config: config ?? ConfigStruct(),
    );
