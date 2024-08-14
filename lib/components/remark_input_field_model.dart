import '/flutter_flow/flutter_flow_util.dart';
import 'remark_input_field_widget.dart' show RemarkInputFieldWidget;
import 'package:flutter/material.dart';

class RemarkInputFieldModel extends FlutterFlowModel<RemarkInputFieldWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for additional_remark_field widget.
  FocusNode? additionalRemarkFieldFocusNode;
  TextEditingController? additionalRemarkFieldTextController;
  String? Function(BuildContext, String?)?
      additionalRemarkFieldTextControllerValidator;
  String? _additionalRemarkFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Action Block - saveRemark] action in additional_remark_field widget.
  String? saveRemarkResponse;

  @override
  void initState(BuildContext context) {
    additionalRemarkFieldTextControllerValidator =
        _additionalRemarkFieldTextControllerValidator;
  }

  @override
  void dispose() {
    additionalRemarkFieldFocusNode?.dispose();
    additionalRemarkFieldTextController?.dispose();
  }
}
