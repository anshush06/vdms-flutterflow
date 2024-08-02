import '/flutter_flow/flutter_flow_util.dart';
import 'selfie_widget_widget.dart' show SelfieWidgetWidget;
import 'package:flutter/material.dart';

class SelfieWidgetModel extends FlutterFlowModel<SelfieWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
