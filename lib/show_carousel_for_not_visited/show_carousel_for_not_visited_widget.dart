import '/backend/schema/structs/index.dart';
import '/components/show_carousel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'show_carousel_for_not_visited_model.dart';
export 'show_carousel_for_not_visited_model.dart';

class ShowCarouselForNotVisitedWidget extends StatefulWidget {
  const ShowCarouselForNotVisitedWidget({
    super.key,
    required this.sitePictures,
    required this.currentImageIndex,
  });

  final List<SitePictureListResponseStruct>? sitePictures;
  final int? currentImageIndex;

  @override
  State<ShowCarouselForNotVisitedWidget> createState() =>
      _ShowCarouselForNotVisitedWidgetState();
}

class _ShowCarouselForNotVisitedWidgetState
    extends State<ShowCarouselForNotVisitedWidget> {
  late ShowCarouselForNotVisitedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowCarouselForNotVisitedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.showCarouselModel,
                  updateCallback: () => setState(() {}),
                  child: ShowCarouselWidget(
                    parameter1: widget.currentImageIndex!,
                    parameter2: widget.sitePictures!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
