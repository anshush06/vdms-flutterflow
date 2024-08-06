import '/flutter_flow/flutter_flow_util.dart';
import 'view_all_captured_images_screen_widget.dart'
    show ViewAllCapturedImagesScreenWidget;
import 'package:flutter/material.dart';

class ViewAllCapturedImagesScreenModel
    extends FlutterFlowModel<ViewAllCapturedImagesScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
