import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'capture_location_screen_widget.dart' show CaptureLocationScreenWidget;
import 'package:flutter/material.dart';

class CaptureLocationScreenModel
    extends FlutterFlowModel<CaptureLocationScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for latitude widget.
  FocusNode? latitudeFocusNode;
  TextEditingController? latitudeTextController;
  String? Function(BuildContext, String?)? latitudeTextControllerValidator;
  // State field(s) for longitude widget.
  FocusNode? longitudeFocusNode;
  TextEditingController? longitudeTextController;
  String? Function(BuildContext, String?)? longitudeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    latitudeFocusNode?.dispose();
    latitudeTextController?.dispose();

    longitudeFocusNode?.dispose();
    longitudeTextController?.dispose();
  }
}
