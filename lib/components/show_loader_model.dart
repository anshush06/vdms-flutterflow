import '/flutter_flow/flutter_flow_util.dart';
import 'show_loader_widget.dart' show ShowLoaderWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ShowLoaderModel extends FlutterFlowModel<ShowLoaderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
