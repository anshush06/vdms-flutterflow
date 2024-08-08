import '/flutter_flow/flutter_flow_util.dart';
import 'main_case_listing_screen_widget.dart' show MainCaseListingScreenWidget;
import 'package:flutter/material.dart';

class MainCaseListingScreenModel
    extends FlutterFlowModel<MainCaseListingScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
