import '/flutter_flow/flutter_flow_util.dart';
import 'remark_widget_widget.dart' show RemarkWidgetWidget;
import 'package:flutter/material.dart';

class RemarkWidgetModel extends FlutterFlowModel<RemarkWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for remarks widget.
  FocusNode? remarksFocusNode;
  TextEditingController? remarksTextController;
  String? Function(BuildContext, String?)? remarksTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    remarksFocusNode?.dispose();
    remarksTextController?.dispose();
  }
}
