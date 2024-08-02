// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelLogResponseStruct extends BaseStruct {
  TravelLogResponseStruct({
    String? date,
    String? startDayReading,
    String? startDayReadingImg,
    String? endDayReading,
    String? endDayReadingImg,
    int? totalTravel,
  })  : _date = date,
        _startDayReading = startDayReading,
        _startDayReadingImg = startDayReadingImg,
        _endDayReading = endDayReading,
        _endDayReadingImg = endDayReadingImg,
        _totalTravel = totalTravel;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "start_day_reading" field.
  String? _startDayReading;
  String get startDayReading => _startDayReading ?? '';
  set startDayReading(String? val) => _startDayReading = val;

  bool hasStartDayReading() => _startDayReading != null;

  // "start_day_reading_img" field.
  String? _startDayReadingImg;
  String get startDayReadingImg => _startDayReadingImg ?? '';
  set startDayReadingImg(String? val) => _startDayReadingImg = val;

  bool hasStartDayReadingImg() => _startDayReadingImg != null;

  // "end_day_reading" field.
  String? _endDayReading;
  String get endDayReading => _endDayReading ?? '';
  set endDayReading(String? val) => _endDayReading = val;

  bool hasEndDayReading() => _endDayReading != null;

  // "end_day_reading_img" field.
  String? _endDayReadingImg;
  String get endDayReadingImg => _endDayReadingImg ?? '';
  set endDayReadingImg(String? val) => _endDayReadingImg = val;

  bool hasEndDayReadingImg() => _endDayReadingImg != null;

  // "total_travel" field.
  int? _totalTravel;
  int get totalTravel => _totalTravel ?? 0;
  set totalTravel(int? val) => _totalTravel = val;

  void incrementTotalTravel(int amount) => totalTravel = totalTravel + amount;

  bool hasTotalTravel() => _totalTravel != null;

  static TravelLogResponseStruct fromMap(Map<String, dynamic> data) =>
      TravelLogResponseStruct(
        date: data['date'] as String?,
        startDayReading: data['start_day_reading'] as String?,
        startDayReadingImg: data['start_day_reading_img'] as String?,
        endDayReading: data['end_day_reading'] as String?,
        endDayReadingImg: data['end_day_reading_img'] as String?,
        totalTravel: castToType<int>(data['total_travel']),
      );

  static TravelLogResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? TravelLogResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'start_day_reading': _startDayReading,
        'start_day_reading_img': _startDayReadingImg,
        'end_day_reading': _endDayReading,
        'end_day_reading_img': _endDayReadingImg,
        'total_travel': _totalTravel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'start_day_reading': serializeParam(
          _startDayReading,
          ParamType.String,
        ),
        'start_day_reading_img': serializeParam(
          _startDayReadingImg,
          ParamType.String,
        ),
        'end_day_reading': serializeParam(
          _endDayReading,
          ParamType.String,
        ),
        'end_day_reading_img': serializeParam(
          _endDayReadingImg,
          ParamType.String,
        ),
        'total_travel': serializeParam(
          _totalTravel,
          ParamType.int,
        ),
      }.withoutNulls;

  static TravelLogResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TravelLogResponseStruct(
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        startDayReading: deserializeParam(
          data['start_day_reading'],
          ParamType.String,
          false,
        ),
        startDayReadingImg: deserializeParam(
          data['start_day_reading_img'],
          ParamType.String,
          false,
        ),
        endDayReading: deserializeParam(
          data['end_day_reading'],
          ParamType.String,
          false,
        ),
        endDayReadingImg: deserializeParam(
          data['end_day_reading_img'],
          ParamType.String,
          false,
        ),
        totalTravel: deserializeParam(
          data['total_travel'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TravelLogResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TravelLogResponseStruct &&
        date == other.date &&
        startDayReading == other.startDayReading &&
        startDayReadingImg == other.startDayReadingImg &&
        endDayReading == other.endDayReading &&
        endDayReadingImg == other.endDayReadingImg &&
        totalTravel == other.totalTravel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        date,
        startDayReading,
        startDayReadingImg,
        endDayReading,
        endDayReadingImg,
        totalTravel
      ]);
}

TravelLogResponseStruct createTravelLogResponseStruct({
  String? date,
  String? startDayReading,
  String? startDayReadingImg,
  String? endDayReading,
  String? endDayReadingImg,
  int? totalTravel,
}) =>
    TravelLogResponseStruct(
      date: date,
      startDayReading: startDayReading,
      startDayReadingImg: startDayReadingImg,
      endDayReading: endDayReading,
      endDayReadingImg: endDayReadingImg,
      totalTravel: totalTravel,
    );
