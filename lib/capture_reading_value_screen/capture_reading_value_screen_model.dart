import '/flutter_flow/flutter_flow_util.dart';
import 'capture_reading_value_screen_widget.dart'
    show CaptureReadingValueScreenWidget;
import 'package:flutter/material.dart';

class CaptureReadingValueScreenModel
    extends FlutterFlowModel<CaptureReadingValueScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for reading widget.
  FocusNode? readingFocusNode;
  TextEditingController? readingTextController;
  String? Function(BuildContext, String?)? readingTextControllerValidator;
  String? _readingTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Reading is required';
    }

    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'Please enter only digits';
    }
    return null;
  }

  // Stores action output result for [Custom Action - convertCompressAndUpload] action in Button widget.
  String? uploadReadingImageResponse;

  @override
  void initState(BuildContext context) {
    readingTextControllerValidator = _readingTextControllerValidator;
  }

  @override
  void dispose() {
    readingFocusNode?.dispose();
    readingTextController?.dispose();
  }
}
