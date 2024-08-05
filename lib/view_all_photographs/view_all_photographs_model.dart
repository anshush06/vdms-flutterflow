import '/flutter_flow/flutter_flow_util.dart';
import 'view_all_photographs_widget.dart' show ViewAllPhotographsWidget;
import 'package:flutter/material.dart';

class ViewAllPhotographsModel
    extends FlutterFlowModel<ViewAllPhotographsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
