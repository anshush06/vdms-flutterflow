import '/components/report_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'report_screen_widget.dart' show ReportScreenWidget;
import 'package:flutter/material.dart';

class ReportScreenModel extends FlutterFlowModel<ReportScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for report_widget component.
  late ReportWidgetModel reportWidgetModel;

  @override
  void initState(BuildContext context) {
    reportWidgetModel = createModel(context, () => ReportWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    reportWidgetModel.dispose();
  }
}
