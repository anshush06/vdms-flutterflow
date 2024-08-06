import '/components/site_pictures_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'site_pictures_screen_widget.dart' show SitePicturesScreenWidget;
import 'package:flutter/material.dart';

class SitePicturesScreenModel
    extends FlutterFlowModel<SitePicturesScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for site_pictures_widget component.
  late SitePicturesWidgetModel sitePicturesWidgetModel;

  @override
  void initState(BuildContext context) {
    sitePicturesWidgetModel =
        createModel(context, () => SitePicturesWidgetModel());
  }

  @override
  void dispose() {
    sitePicturesWidgetModel.dispose();
  }
}
