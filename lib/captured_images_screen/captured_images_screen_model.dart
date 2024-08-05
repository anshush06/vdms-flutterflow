import '/flutter_flow/flutter_flow_util.dart';
import 'captured_images_screen_widget.dart' show CapturedImagesScreenWidget;
import 'package:flutter/material.dart';

class CapturedImagesScreenModel
    extends FlutterFlowModel<CapturedImagesScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
