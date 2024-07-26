import '/components/documentation_widget_widget.dart';
import '/components/remark_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'case_details_screen_widget.dart' show CaseDetailsScreenWidget;
import 'package:flutter/material.dart';

class CaseDetailsScreenModel extends FlutterFlowModel<CaseDetailsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for remark_widget component.
  late RemarkWidgetModel remarkWidgetModel;
  // Model for documentation_widget component.
  late DocumentationWidgetModel documentationWidgetModel;

  @override
  void initState(BuildContext context) {
    remarkWidgetModel = createModel(context, () => RemarkWidgetModel());
    documentationWidgetModel =
        createModel(context, () => DocumentationWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    remarkWidgetModel.dispose();
    documentationWidgetModel.dispose();
  }
}
