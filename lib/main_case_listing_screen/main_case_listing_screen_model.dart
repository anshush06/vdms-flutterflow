import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/case_card_widget/case_card_widget_widget.dart';
import 'dart:async';
import 'main_case_listing_screen_widget.dart' show MainCaseListingScreenWidget;
import 'package:flutter/material.dart';

class MainCaseListingScreenModel
    extends FlutterFlowModel<MainCaseListingScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for case_card_widget component.
  late CaseCardWidgetModel caseCardWidgetModel2;
  // Stores action output result for [Backend Call - API (getCaseAPI)] action in Tab widget.
  ApiCallResponse? apiResult17h;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {
    caseCardWidgetModel2 = createModel(context, () => CaseCardWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    caseCardWidgetModel2.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
