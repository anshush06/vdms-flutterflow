// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FloorWiseDetailsStruct extends BaseStruct {
  FloorWiseDetailsStruct({
    String? floor,
    String? usage,
    String? occupied,
    String? accomodation,
    String? actualAreaMeasured,
  })  : _floor = floor,
        _usage = usage,
        _occupied = occupied,
        _accomodation = accomodation,
        _actualAreaMeasured = actualAreaMeasured;

  // "floor" field.
  String? _floor;
  String get floor => _floor ?? '';
  set floor(String? val) => _floor = val;

  bool hasFloor() => _floor != null;

  // "usage" field.
  String? _usage;
  String get usage => _usage ?? '';
  set usage(String? val) => _usage = val;

  bool hasUsage() => _usage != null;

  // "occupied" field.
  String? _occupied;
  String get occupied => _occupied ?? '';
  set occupied(String? val) => _occupied = val;

  bool hasOccupied() => _occupied != null;

  // "accomodation" field.
  String? _accomodation;
  String get accomodation => _accomodation ?? '';
  set accomodation(String? val) => _accomodation = val;

  bool hasAccomodation() => _accomodation != null;

  // "actualAreaMeasured" field.
  String? _actualAreaMeasured;
  String get actualAreaMeasured => _actualAreaMeasured ?? '';
  set actualAreaMeasured(String? val) => _actualAreaMeasured = val;

  bool hasActualAreaMeasured() => _actualAreaMeasured != null;

  static FloorWiseDetailsStruct fromMap(Map<String, dynamic> data) =>
      FloorWiseDetailsStruct(
        floor: data['floor'] as String?,
        usage: data['usage'] as String?,
        occupied: data['occupied'] as String?,
        accomodation: data['accomodation'] as String?,
        actualAreaMeasured: data['actualAreaMeasured'] as String?,
      );

  static FloorWiseDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? FloorWiseDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'floor': _floor,
        'usage': _usage,
        'occupied': _occupied,
        'accomodation': _accomodation,
        'actualAreaMeasured': _actualAreaMeasured,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'floor': serializeParam(
          _floor,
          ParamType.String,
        ),
        'usage': serializeParam(
          _usage,
          ParamType.String,
        ),
        'occupied': serializeParam(
          _occupied,
          ParamType.String,
        ),
        'accomodation': serializeParam(
          _accomodation,
          ParamType.String,
        ),
        'actualAreaMeasured': serializeParam(
          _actualAreaMeasured,
          ParamType.String,
        ),
      }.withoutNulls;

  static FloorWiseDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FloorWiseDetailsStruct(
        floor: deserializeParam(
          data['floor'],
          ParamType.String,
          false,
        ),
        usage: deserializeParam(
          data['usage'],
          ParamType.String,
          false,
        ),
        occupied: deserializeParam(
          data['occupied'],
          ParamType.String,
          false,
        ),
        accomodation: deserializeParam(
          data['accomodation'],
          ParamType.String,
          false,
        ),
        actualAreaMeasured: deserializeParam(
          data['actualAreaMeasured'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FloorWiseDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FloorWiseDetailsStruct &&
        floor == other.floor &&
        usage == other.usage &&
        occupied == other.occupied &&
        accomodation == other.accomodation &&
        actualAreaMeasured == other.actualAreaMeasured;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([floor, usage, occupied, accomodation, actualAreaMeasured]);
}

FloorWiseDetailsStruct createFloorWiseDetailsStruct({
  String? floor,
  String? usage,
  String? occupied,
  String? accomodation,
  String? actualAreaMeasured,
}) =>
    FloorWiseDetailsStruct(
      floor: floor,
      usage: usage,
      occupied: occupied,
      accomodation: accomodation,
      actualAreaMeasured: actualAreaMeasured,
    );
