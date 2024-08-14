import '/components/show_carousel_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'show_carousel_for_not_visited_widget.dart'
    show ShowCarouselForNotVisitedWidget;
import 'package:flutter/material.dart';

class ShowCarouselForNotVisitedModel
    extends FlutterFlowModel<ShowCarouselForNotVisitedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for showCarousel component.
  late ShowCarouselModel showCarouselModel;

  @override
  void initState(BuildContext context) {
    showCarouselModel = createModel(context, () => ShowCarouselModel());
  }

  @override
  void dispose() {
    showCarouselModel.dispose();
  }
}
