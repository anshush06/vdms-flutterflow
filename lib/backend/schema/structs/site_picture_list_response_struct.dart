// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SitePictureListResponseStruct extends BaseStruct {
  SitePictureListResponseStruct({
    String? name,
    List<int>? bytes,
    int? section,
    String? fieldName,
    String? timestamp,
    String? caseId,
  })  : _name = name,
        _bytes = bytes,
        _section = section,
        _fieldName = fieldName,
        _timestamp = timestamp,
        _caseId = caseId;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "bytes" field.
  List<int>? _bytes;
  List<int> get bytes => _bytes ?? const [];
  set bytes(List<int>? val) => _bytes = val;

  void updateBytes(Function(List<int>) updateFn) {
    updateFn(_bytes ??= []);
  }

  bool hasBytes() => _bytes != null;

  // "section" field.
  int? _section;
  int get section => _section ?? 0;
  set section(int? val) => _section = val;

  void incrementSection(int amount) => section = section + amount;

  bool hasSection() => _section != null;

  // "fieldName" field.
  String? _fieldName;
  String get fieldName => _fieldName ?? '';
  set fieldName(String? val) => _fieldName = val;

  bool hasFieldName() => _fieldName != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  set timestamp(String? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  // "caseId" field.
  String? _caseId;
  String get caseId => _caseId ?? '';
  set caseId(String? val) => _caseId = val;

  bool hasCaseId() => _caseId != null;

  static SitePictureListResponseStruct fromMap(Map<String, dynamic> data) =>
      SitePictureListResponseStruct(
        name: data['name'] as String?,
        bytes: getDataList(data['bytes']),
        section: castToType<int>(data['section']),
        fieldName: data['fieldName'] as String?,
        timestamp: data['timestamp'] as String?,
        caseId: data['caseId'] as String?,
      );

  static SitePictureListResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? SitePictureListResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'bytes': _bytes,
        'section': _section,
        'fieldName': _fieldName,
        'timestamp': _timestamp,
        'caseId': _caseId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'bytes': serializeParam(
          _bytes,
          ParamType.int,
          isList: true,
        ),
        'section': serializeParam(
          _section,
          ParamType.int,
        ),
        'fieldName': serializeParam(
          _fieldName,
          ParamType.String,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.String,
        ),
        'caseId': serializeParam(
          _caseId,
          ParamType.String,
        ),
      }.withoutNulls;

  static SitePictureListResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SitePictureListResponseStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        bytes: deserializeParam<int>(
          data['bytes'],
          ParamType.int,
          true,
        ),
        section: deserializeParam(
          data['section'],
          ParamType.int,
          false,
        ),
        fieldName: deserializeParam(
          data['fieldName'],
          ParamType.String,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.String,
          false,
        ),
        caseId: deserializeParam(
          data['caseId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SitePictureListResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SitePictureListResponseStruct &&
        name == other.name &&
        listEquality.equals(bytes, other.bytes) &&
        section == other.section &&
        fieldName == other.fieldName &&
        timestamp == other.timestamp &&
        caseId == other.caseId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, bytes, section, fieldName, timestamp, caseId]);
}

SitePictureListResponseStruct createSitePictureListResponseStruct({
  String? name,
  int? section,
  String? fieldName,
  String? timestamp,
  String? caseId,
}) =>
    SitePictureListResponseStruct(
      name: name,
      section: section,
      fieldName: fieldName,
      timestamp: timestamp,
      caseId: caseId,
    );
