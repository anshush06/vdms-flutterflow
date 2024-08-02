// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelfieImagesStruct extends BaseStruct {
  SelfieImagesStruct({
    String? images,
  }) : _images = images;

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  set images(String? val) => _images = val;

  bool hasImages() => _images != null;

  static SelfieImagesStruct fromMap(Map<String, dynamic> data) =>
      SelfieImagesStruct(
        images: data['images'] as String?,
      );

  static SelfieImagesStruct? maybeFromMap(dynamic data) => data is Map
      ? SelfieImagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'images': _images,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'images': serializeParam(
          _images,
          ParamType.String,
        ),
      }.withoutNulls;

  static SelfieImagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelfieImagesStruct(
        images: deserializeParam(
          data['images'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SelfieImagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelfieImagesStruct && images == other.images;
  }

  @override
  int get hashCode => const ListEquality().hash([images]);
}

SelfieImagesStruct createSelfieImagesStruct({
  String? images,
}) =>
    SelfieImagesStruct(
      images: images,
    );
