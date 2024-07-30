import '/backend/api_requests/api_calls.dart';
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
  String? _remarksTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Remark is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (saveRemarkAPI)] action in submiRemark widget.
  ApiCallResponse? saveRemarkAPIResponse;

  @override
  void initState(BuildContext context) {
    remarksTextControllerValidator = _remarksTextControllerValidator;
  }

  @override
  void dispose() {
    remarksFocusNode?.dispose();
    remarksTextController?.dispose();
  }
}
