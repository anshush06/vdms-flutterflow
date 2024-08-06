import '/flutter_flow/flutter_flow_util.dart';
import 'capture_reading_screen_widget.dart' show CaptureReadingScreenWidget;
import 'package:flutter/material.dart';

class CaptureReadingScreenModel
    extends FlutterFlowModel<CaptureReadingScreenWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
