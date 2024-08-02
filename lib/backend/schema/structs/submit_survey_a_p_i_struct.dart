// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubmitSurveyAPIStruct extends BaseStruct {
  SubmitSurveyAPIStruct({
    List<String>? response,
    ConfigStruct? config,
    ErrorStruct? error,
  })  : _response = response,
        _config = config,
        _error = error;

  // "response" field.
  List<String>? _response;
  List<String> get response => _response ?? const [];
  set response(List<String>? val) => _response = val;

  void updateResponse(Function(List<String>) updateFn) {
    updateFn(_response ??= []);
  }

  bool hasResponse() => _response != null;

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

  static SubmitSurveyAPIStruct fromMap(Map<String, dynamic> data) =>
      SubmitSurveyAPIStruct(
        response: getDataList(data['response']),
        config: ConfigStruct.maybeFromMap(data['config']),
        error: ErrorStruct.maybeFromMap(data['error']),
      );

  static SubmitSurveyAPIStruct? maybeFromMap(dynamic data) => data is Map
      ? SubmitSurveyAPIStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'response': _response,
        'config': _config?.toMap(),
        'error': _error?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'response': serializeParam(
          _response,
          ParamType.String,
          isList: true,
        ),
        'config': serializeParam(
          _config,
          ParamType.DataStruct,
        ),
        'error': serializeParam(
          _error,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SubmitSurveyAPIStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubmitSurveyAPIStruct(
        response: deserializeParam<String>(
          data['response'],
          ParamType.String,
          true,
        ),
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
      );

  @override
  String toString() => 'SubmitSurveyAPIStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SubmitSurveyAPIStruct &&
        listEquality.equals(response, other.response) &&
        config == other.config &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([response, config, error]);
}

SubmitSurveyAPIStruct createSubmitSurveyAPIStruct({
  ConfigStruct? config,
  ErrorStruct? error,
}) =>
    SubmitSurveyAPIStruct(
      config: config ?? ConfigStruct(),
      error: error ?? ErrorStruct(),
    );
