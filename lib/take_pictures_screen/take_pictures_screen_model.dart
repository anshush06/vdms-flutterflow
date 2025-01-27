import '/flutter_flow/flutter_flow_util.dart';
import 'take_pictures_screen_widget.dart' show TakePicturesScreenWidget;
import 'package:flutter/material.dart';

class TakePicturesScreenModel
    extends FlutterFlowModel<TakePicturesScreenWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
