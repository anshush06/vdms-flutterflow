// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelReadingResponseStruct extends BaseStruct {
  TravelReadingResponseStruct({
    String? message,
    String? startDayReading,
  })  : _message = message,
        _startDayReading = startDayReading;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "start_day_reading" field.
  String? _startDayReading;
  String get startDayReading => _startDayReading ?? '';
  set startDayReading(String? val) => _startDayReading = val;

  bool hasStartDayReading() => _startDayReading != null;

  static TravelReadingResponseStruct fromMap(Map<String, dynamic> data) =>
      TravelReadingResponseStruct(
        message: data['message'] as String?,
        startDayReading: data['start_day_reading'] as String?,
      );

  static TravelReadingResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? TravelReadingResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'start_day_reading': _startDayReading,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'start_day_reading': serializeParam(
          _startDayReading,
          ParamType.String,
        ),
      }.withoutNulls;

  static TravelReadingResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TravelReadingResponseStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        startDayReading: deserializeParam(
          data['start_day_reading'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TravelReadingResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TravelReadingResponseStruct &&
        message == other.message &&
        startDayReading == other.startDayReading;
  }

  @override
  int get hashCode => const ListEquality().hash([message, startDayReading]);
}

TravelReadingResponseStruct createTravelReadingResponseStruct({
  String? message,
  String? startDayReading,
}) =>
    TravelReadingResponseStruct(
      message: message,
      startDayReading: startDayReading,
    );
