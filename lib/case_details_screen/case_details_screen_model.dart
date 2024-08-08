import '/backend/api_requests/api_calls.dart';
import '/components/documentation_widget_widget.dart';
import '/components/remark_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/case_card_widget/case_card_widget_widget.dart';
import 'case_details_screen_widget.dart' show CaseDetailsScreenWidget;
import 'package:flutter/material.dart';

class CaseDetailsScreenModel extends FlutterFlowModel<CaseDetailsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for case_card_widget component.
  late CaseCardWidgetModel caseCardWidgetModel;
  // Model for remark_widget component.
  late RemarkWidgetModel remarkWidgetModel;
  // Model for documentation_widget component.
  late DocumentationWidgetModel documentationWidgetModel;
  // Stores action output result for [Custom Action - submitSurveyDocuments] action in Button widget.
  bool? submitSurveyAPIResponse1;
  // Stores action output result for [Backend Call - API (saveSurveyLocationAPI)] action in Button widget.
  ApiCallResponse? saveLocationAPIResponse;
  // Stores action output result for [Backend Call - API (submitSurveyAPI)] action in Button widget.
  ApiCallResponse? submitSurveyAPIResponse;

  @override
  void initState(BuildContext context) {
    caseCardWidgetModel = createModel(context, () => CaseCardWidgetModel());
    remarkWidgetModel = createModel(context, () => RemarkWidgetModel());
    documentationWidgetModel =
        createModel(context, () => DocumentationWidgetModel());
  }

  @override
  void dispose() {
    caseCardWidgetModel.dispose();
    remarkWidgetModel.dispose();
    documentationWidgetModel.dispose();
  }
}
