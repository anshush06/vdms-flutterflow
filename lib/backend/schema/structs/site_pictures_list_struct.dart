// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SitePicturesListStruct extends BaseStruct {
  SitePicturesListStruct({
    SitePictureListResponseStruct? allImages,
  }) : _allImages = allImages;

  // "allImages" field.
  SitePictureListResponseStruct? _allImages;
  SitePictureListResponseStruct get allImages =>
      _allImages ?? SitePictureListResponseStruct();
  set allImages(SitePictureListResponseStruct? val) => _allImages = val;

  void updateAllImages(Function(SitePictureListResponseStruct) updateFn) {
    updateFn(_allImages ??= SitePictureListResponseStruct());
  }

  bool hasAllImages() => _allImages != null;

  static SitePicturesListStruct fromMap(Map<String, dynamic> data) =>
      SitePicturesListStruct(
        allImages:
            SitePictureListResponseStruct.maybeFromMap(data['allImages']),
      );

  static SitePicturesListStruct? maybeFromMap(dynamic data) => data is Map
      ? SitePicturesListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'allImages': _allImages?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'allImages': serializeParam(
          _allImages,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SitePicturesListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SitePicturesListStruct(
        allImages: deserializeStructParam(
          data['allImages'],
          ParamType.DataStruct,
          false,
          structBuilder: SitePictureListResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SitePicturesListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SitePicturesListStruct && allImages == other.allImages;
  }

  @override
  int get hashCode => const ListEquality().hash([allImages]);
}

SitePicturesListStruct createSitePicturesListStruct({
  SitePictureListResponseStruct? allImages,
}) =>
    SitePicturesListStruct(
      allImages: allImages ?? SitePictureListResponseStruct(),
    );
