import '/flutter_flow/flutter_flow_util.dart';
import 'accommodation_widget_widget.dart' show AccommodationWidgetWidget;
import 'package:flutter/material.dart';

class AccommodationWidgetModel
    extends FlutterFlowModel<AccommodationWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name_of_floor widget.
  FocusNode? nameOfFloorFocusNode;
  TextEditingController? nameOfFloorTextController;
  String? Function(BuildContext, String?)? nameOfFloorTextControllerValidator;
  // State field(s) for occupied_by widget.
  FocusNode? occupiedByFocusNode;
  TextEditingController? occupiedByTextController;
  String? Function(BuildContext, String?)? occupiedByTextControllerValidator;
  // State field(s) for usage widget.
  FocusNode? usageFocusNode;
  TextEditingController? usageTextController;
  String? Function(BuildContext, String?)? usageTextControllerValidator;
  // State field(s) for accommodation widget.
  FocusNode? accommodationFocusNode;
  TextEditingController? accommodationTextController;
  String? Function(BuildContext, String?)? accommodationTextControllerValidator;
  // State field(s) for actual_area_measured widget.
  FocusNode? actualAreaMeasuredFocusNode;
  TextEditingController? actualAreaMeasuredTextController;
  String? Function(BuildContext, String?)?
      actualAreaMeasuredTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameOfFloorFocusNode?.dispose();
    nameOfFloorTextController?.dispose();

    occupiedByFocusNode?.dispose();
    occupiedByTextController?.dispose();

    usageFocusNode?.dispose();
    usageTextController?.dispose();

    accommodationFocusNode?.dispose();
    accommodationTextController?.dispose();

    actualAreaMeasuredFocusNode?.dispose();
    actualAreaMeasuredTextController?.dispose();
  }
}
