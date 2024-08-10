// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetCaseImagesResponseStruct extends BaseStruct {
  GetCaseImagesResponseStruct({
    String? id,
    String? imgSrc,
    String? title,
    String? caption,
    String? downloadUrl,
  })  : _id = id,
        _imgSrc = imgSrc,
        _title = title,
        _caption = caption,
        _downloadUrl = downloadUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "imgSrc" field.
  String? _imgSrc;
  String get imgSrc => _imgSrc ?? '';
  set imgSrc(String? val) => _imgSrc = val;

  bool hasImgSrc() => _imgSrc != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  set caption(String? val) => _caption = val;

  bool hasCaption() => _caption != null;

  // "downloadUrl" field.
  String? _downloadUrl;
  String get downloadUrl => _downloadUrl ?? '';
  set downloadUrl(String? val) => _downloadUrl = val;

  bool hasDownloadUrl() => _downloadUrl != null;

  static GetCaseImagesResponseStruct fromMap(Map<String, dynamic> data) =>
      GetCaseImagesResponseStruct(
        id: data['id'] as String?,
        imgSrc: data['imgSrc'] as String?,
        title: data['title'] as String?,
        caption: data['caption'] as String?,
        downloadUrl: data['downloadUrl'] as String?,
      );

  static GetCaseImagesResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? GetCaseImagesResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'imgSrc': _imgSrc,
        'title': _title,
        'caption': _caption,
        'downloadUrl': _downloadUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'imgSrc': serializeParam(
          _imgSrc,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'caption': serializeParam(
          _caption,
          ParamType.String,
        ),
        'downloadUrl': serializeParam(
          _downloadUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetCaseImagesResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetCaseImagesResponseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        imgSrc: deserializeParam(
          data['imgSrc'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        caption: deserializeParam(
          data['caption'],
          ParamType.String,
          false,
        ),
        downloadUrl: deserializeParam(
          data['downloadUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GetCaseImagesResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetCaseImagesResponseStruct &&
        id == other.id &&
        imgSrc == other.imgSrc &&
        title == other.title &&
        caption == other.caption &&
        downloadUrl == other.downloadUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, imgSrc, title, caption, downloadUrl]);
}

GetCaseImagesResponseStruct createGetCaseImagesResponseStruct({
  String? id,
  String? imgSrc,
  String? title,
  String? caption,
  String? downloadUrl,
}) =>
    GetCaseImagesResponseStruct(
      id: id,
      imgSrc: imgSrc,
      title: title,
      caption: caption,
      downloadUrl: downloadUrl,
    );
