import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'splash_screen_widget.dart' show SplashScreenWidget;
import 'package:flutter/material.dart';

class SplashScreenModel extends FlutterFlowModel<SplashScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAreasAPI)] action in splash_screen widget.
  ApiCallResponse? getAreasAPIResponse;
  // Stores action output result for [Backend Call - API (checkFieldEngineerTravelStatus)] action in splash_screen widget.
  ApiCallResponse? checkTravelStatusAPIResponse2;
  // Stores action output result for [Backend Call - API (getNotificationsCountAPI)] action in splash_screen widget.
  ApiCallResponse? notificationCountAPIResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
