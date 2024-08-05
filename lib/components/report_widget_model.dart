import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'report_widget_widget.dart' show ReportWidgetWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ReportWidgetModel extends FlutterFlowModel<ReportWidgetWidget> {
  ///  Local state fields for this component.

  List<String> widgetComp = ['accomdation1'];
  void addToWidgetComp(String item) => widgetComp.add(item);
  void removeFromWidgetComp(String item) => widgetComp.remove(item);
  void removeAtIndexFromWidgetComp(int index) => widgetComp.removeAt(index);
  void insertAtIndexInWidgetComp(int index, String item) =>
      widgetComp.insert(index, item);
  void updateWidgetCompAtIndex(int index, Function(String) updateFn) =>
      widgetComp[index] = updateFn(widgetComp[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for ref_no widget.
  FocusNode? refNoFocusNode;
  TextEditingController? refNoTextController;
  String? Function(BuildContext, String?)? refNoTextControllerValidator;
  // State field(s) for bankname widget.
  FocusNode? banknameFocusNode;
  TextEditingController? banknameTextController;
  String? Function(BuildContext, String?)? banknameTextControllerValidator;
  // State field(s) for enginerrname widget.
  FocusNode? enginerrnameFocusNode;
  TextEditingController? enginerrnameTextController;
  String? Function(BuildContext, String?)? enginerrnameTextControllerValidator;
  // State field(s) for date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for applicantName widget.
  FocusNode? applicantNameFocusNode;
  TextEditingController? applicantNameTextController;
  String? Function(BuildContext, String?)? applicantNameTextControllerValidator;
  // State field(s) for addressline1 widget.
  FocusNode? addressline1FocusNode;
  TextEditingController? addressline1TextController;
  String? Function(BuildContext, String?)? addressline1TextControllerValidator;
  String? _addressline1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Address1 is required';
    }

    return null;
  }

  // State field(s) for addressline2 widget.
  FocusNode? addressline2FocusNode;
  TextEditingController? addressline2TextController;
  String? Function(BuildContext, String?)? addressline2TextControllerValidator;
  String? _addressline2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Address2 is required';
    }

    return null;
  }

  // State field(s) for statedropdown widget.
  String? statedropdownValue;
  FormFieldController<String>? statedropdownValueController;
  // State field(s) for locality widget.
  FocusNode? localityFocusNode;
  TextEditingController? localityTextController;
  String? Function(BuildContext, String?)? localityTextControllerValidator;
  String? _localityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Locality is required';
    }

    return null;
  }

  // State field(s) for pincode widget.
  FocusNode? pincodeFocusNode;
  TextEditingController? pincodeTextController;
  String? Function(BuildContext, String?)? pincodeTextControllerValidator;
  String? _pincodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pincode is required';
    }

    return null;
  }

  // State field(s) for person_met_and_contact widget.
  FocusNode? personMetAndContactFocusNode;
  TextEditingController? personMetAndContactTextController;
  String? Function(BuildContext, String?)?
      personMetAndContactTextControllerValidator;
  String? _personMetAndContactTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Person met and contact is required';
    }

    return null;
  }

  // State field(s) for relation_with_owner widget.
  FocusNode? relationWithOwnerFocusNode;
  TextEditingController? relationWithOwnerTextController;
  String? Function(BuildContext, String?)?
      relationWithOwnerTextControllerValidator;
  String? _relationWithOwnerTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for propertylocationdropdown widget.
  String? propertylocationdropdownValue;
  FormFieldController<String>? propertylocationdropdownValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for landmark widget.
  FocusNode? landmarkFocusNode;
  TextEditingController? landmarkTextController;
  String? Function(BuildContext, String?)? landmarkTextControllerValidator;
  String? _landmarkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Landmark is required';
    }

    return null;
  }

  // State field(s) for classification_locality widget.
  String? classificationLocalityValue;
  FormFieldController<String>? classificationLocalityValueController;
  // State field(s) for nameplate widget.
  FormFieldController<String>? nameplateValueController;
  // State field(s) for PlotDemarcated widget.
  FormFieldController<String>? plotDemarcatedValueController;
  // State field(s) for road_width widget.
  FocusNode? roadWidthFocusNode;
  TextEditingController? roadWidthTextController;
  String? Function(BuildContext, String?)? roadWidthTextControllerValidator;
  String? _roadWidthTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for property_identified_dropdown widget.
  List<String>? propertyIdentifiedDropdownValue;
  FormFieldController<List<String>>? propertyIdentifiedDropdownValueController;
  // State field(s) for distance_from_city widget.
  FocusNode? distanceFromCityFocusNode;
  TextEditingController? distanceFromCityTextController;
  String? Function(BuildContext, String?)?
      distanceFromCityTextControllerValidator;
  String? _distanceFromCityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for distance_from_station widget.
  FocusNode? distanceFromStationFocusNode;
  TextEditingController? distanceFromStationTextController;
  String? Function(BuildContext, String?)?
      distanceFromStationTextControllerValidator;
  String? _distanceFromStationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for distance_from_bus widget.
  FocusNode? distanceFromBusFocusNode;
  TextEditingController? distanceFromBusTextController;
  String? Function(BuildContext, String?)?
      distanceFromBusTextControllerValidator;
  String? _distanceFromBusTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for distance_from_hospital widget.
  FocusNode? distanceFromHospitalFocusNode;
  TextEditingController? distanceFromHospitalTextController;
  String? Function(BuildContext, String?)?
      distanceFromHospitalTextControllerValidator;
  String? _distanceFromHospitalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for north widget.
  FocusNode? northFocusNode;
  TextEditingController? northTextController;
  String? Function(BuildContext, String?)? northTextControllerValidator;
  String? _northTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for south widget.
  FocusNode? southFocusNode;
  TextEditingController? southTextController;
  String? Function(BuildContext, String?)? southTextControllerValidator;
  String? _southTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for east widget.
  FocusNode? eastFocusNode;
  TextEditingController? eastTextController;
  String? Function(BuildContext, String?)? eastTextControllerValidator;
  String? _eastTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for west widget.
  FocusNode? westFocusNode;
  TextEditingController? westTextController;
  String? Function(BuildContext, String?)? westTextControllerValidator;
  String? _westTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for type_of_property widget.
  String? typeOfPropertyValue;
  FormFieldController<String>? typeOfPropertyValueController;
  // State field(s) for permitted_use_property widget.
  String? permittedUsePropertyValue;
  FormFieldController<String>? permittedUsePropertyValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for type_of_structure widget.
  String? typeOfStructureValue;
  FormFieldController<String>? typeOfStructureValueController;
  // State field(s) for total_floors widget.
  FocusNode? totalFloorsFocusNode;
  TextEditingController? totalFloorsTextController;
  String? Function(BuildContext, String?)? totalFloorsTextControllerValidator;
  String? _totalFloorsTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for total_units widget.
  FocusNode? totalUnitsFocusNode;
  TextEditingController? totalUnitsTextController;
  String? Function(BuildContext, String?)? totalUnitsTextControllerValidator;
  String? _totalUnitsTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for floor_location widget.
  FocusNode? floorLocationFocusNode;
  TextEditingController? floorLocationTextController;
  String? Function(BuildContext, String?)? floorLocationTextControllerValidator;
  String? _floorLocationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Nooflifts widget.
  FocusNode? noofliftsFocusNode;
  TextEditingController? noofliftsTextController;
  String? Function(BuildContext, String?)? noofliftsTextControllerValidator;
  String? _noofliftsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for building_age widget.
  FocusNode? buildingAgeFocusNode;
  TextEditingController? buildingAgeTextController;
  String? Function(BuildContext, String?)? buildingAgeTextControllerValidator;
  String? _buildingAgeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

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
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for construction_status widget.
  String? constructionStatusValue;
  FormFieldController<String>? constructionStatusValueController;
  // State field(s) for completion_stage widget.
  FocusNode? completionStageFocusNode;
  TextEditingController? completionStageTextController;
  String? Function(BuildContext, String?)?
      completionStageTextControllerValidator;
  String? _completionStageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for roof_terrace widget.
  String? roofTerraceValue;
  FormFieldController<String>? roofTerraceValueController;
  // State field(s) for walls_dropdown widget.
  List<String>? wallsDropdownValue;
  FormFieldController<List<String>>? wallsDropdownValueController;
  // State field(s) for doors_windows_dropdown widget.
  List<String>? doorsWindowsDropdownValue;
  FormFieldController<List<String>>? doorsWindowsDropdownValueController;
  // State field(s) for floor_type widget.
  List<String>? floorTypeValue;
  FormFieldController<List<String>>? floorTypeValueController;
  // State field(s) for interior_construction_quality widget.
  String? interiorConstructionQualityValue;
  FormFieldController<String>? interiorConstructionQualityValueController;
  // State field(s) for exterior_construction_quality widget.
  String? exteriorConstructionQualityValue;
  FormFieldController<String>? exteriorConstructionQualityValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // State field(s) for valuation_type widget.
  String? valuationTypeValue;
  FormFieldController<String>? valuationTypeValueController;
  // State field(s) for carpet_area widget.
  FocusNode? carpetAreaFocusNode;
  TextEditingController? carpetAreaTextController;
  String? Function(BuildContext, String?)? carpetAreaTextControllerValidator;
  String? _carpetAreaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for carpet_area_dropdown widget.
  String? carpetAreaDropdownValue;
  FormFieldController<String>? carpetAreaDropdownValueController;
  // State field(s) for balcony_area widget.
  FocusNode? balconyAreaFocusNode;
  TextEditingController? balconyAreaTextController;
  String? Function(BuildContext, String?)? balconyAreaTextControllerValidator;
  String? _balconyAreaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for balcony_area_dropdown widget.
  String? balconyAreaDropdownValue;
  FormFieldController<String>? balconyAreaDropdownValueController;
  // State field(s) for super_area widget.
  FocusNode? superAreaFocusNode;
  TextEditingController? superAreaTextController;
  String? Function(BuildContext, String?)? superAreaTextControllerValidator;
  String? _superAreaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for super_area_dropdown widget.
  String? superAreaDropdownValue;
  FormFieldController<String>? superAreaDropdownValueController;
  // State field(s) for plot_length widget.
  FocusNode? plotLengthFocusNode;
  TextEditingController? plotLengthTextController;
  String? Function(BuildContext, String?)? plotLengthTextControllerValidator;
  String? _plotLengthTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for plot_width widget.
  FocusNode? plotWidthFocusNode;
  TextEditingController? plotWidthTextController;
  String? Function(BuildContext, String?)? plotWidthTextControllerValidator;
  String? _plotWidthTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for plot_area widget.
  FocusNode? plotAreaFocusNode;
  TextEditingController? plotAreaTextController;
  String? Function(BuildContext, String?)? plotAreaTextControllerValidator;
  String? _plotAreaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for plot_area_dropdown widget.
  String? plotAreaDropdownValue;
  FormFieldController<String>? plotAreaDropdownValueController;
  // State field(s) for rental_value widget.
  FocusNode? rentalValueFocusNode;
  TextEditingController? rentalValueTextController;
  String? Function(BuildContext, String?)? rentalValueTextControllerValidator;
  String? _rentalValueTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for rental_dropdown widget.
  String? rentalDropdownValue;
  FormFieldController<String>? rentalDropdownValueController;
  // State field(s) for market_rates_minimum widget.
  FocusNode? marketRatesMinimumFocusNode;
  TextEditingController? marketRatesMinimumTextController;
  String? Function(BuildContext, String?)?
      marketRatesMinimumTextControllerValidator;
  String? _marketRatesMinimumTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for market_minimum_dropdown widget.
  String? marketMinimumDropdownValue;
  FormFieldController<String>? marketMinimumDropdownValueController;
  // State field(s) for market_rates_maximum widget.
  FocusNode? marketRatesMaximumFocusNode;
  TextEditingController? marketRatesMaximumTextController;
  String? Function(BuildContext, String?)?
      marketRatesMaximumTextControllerValidator;
  String? _marketRatesMaximumTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for market_maximum_dropdown widget.
  String? marketMaximumDropdownValue;
  FormFieldController<String>? marketMaximumDropdownValueController;
  // State field(s) for dealer_name widget.
  FocusNode? dealerNameFocusNode;
  TextEditingController? dealerNameTextController;
  String? Function(BuildContext, String?)? dealerNameTextControllerValidator;
  // State field(s) for dealer_contact widget.
  FocusNode? dealerContactFocusNode;
  TextEditingController? dealerContactTextController;
  String? Function(BuildContext, String?)? dealerContactTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController8;

  // State field(s) for remark_no_1 widget.
  FocusNode? remarkNo1FocusNode;
  TextEditingController? remarkNo1TextController;
  String? Function(BuildContext, String?)? remarkNo1TextControllerValidator;
  String? _remarkNo1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Aadditional_remark widget.
  FocusNode? aadditionalRemarkFocusNode;
  TextEditingController? aadditionalRemarkTextController;
  String? Function(BuildContext, String?)?
      aadditionalRemarkTextControllerValidator;

  @override
  void initState(BuildContext context) {
    addressline1TextControllerValidator = _addressline1TextControllerValidator;
    addressline2TextControllerValidator = _addressline2TextControllerValidator;
    localityTextControllerValidator = _localityTextControllerValidator;
    pincodeTextControllerValidator = _pincodeTextControllerValidator;
    personMetAndContactTextControllerValidator =
        _personMetAndContactTextControllerValidator;
    relationWithOwnerTextControllerValidator =
        _relationWithOwnerTextControllerValidator;
    landmarkTextControllerValidator = _landmarkTextControllerValidator;
    roadWidthTextControllerValidator = _roadWidthTextControllerValidator;
    distanceFromCityTextControllerValidator =
        _distanceFromCityTextControllerValidator;
    distanceFromStationTextControllerValidator =
        _distanceFromStationTextControllerValidator;
    distanceFromBusTextControllerValidator =
        _distanceFromBusTextControllerValidator;
    distanceFromHospitalTextControllerValidator =
        _distanceFromHospitalTextControllerValidator;
    northTextControllerValidator = _northTextControllerValidator;
    southTextControllerValidator = _southTextControllerValidator;
    eastTextControllerValidator = _eastTextControllerValidator;
    westTextControllerValidator = _westTextControllerValidator;
    totalFloorsTextControllerValidator = _totalFloorsTextControllerValidator;
    totalUnitsTextControllerValidator = _totalUnitsTextControllerValidator;
    floorLocationTextControllerValidator =
        _floorLocationTextControllerValidator;
    noofliftsTextControllerValidator = _noofliftsTextControllerValidator;
    buildingAgeTextControllerValidator = _buildingAgeTextControllerValidator;
    completionStageTextControllerValidator =
        _completionStageTextControllerValidator;
    carpetAreaTextControllerValidator = _carpetAreaTextControllerValidator;
    balconyAreaTextControllerValidator = _balconyAreaTextControllerValidator;
    superAreaTextControllerValidator = _superAreaTextControllerValidator;
    plotLengthTextControllerValidator = _plotLengthTextControllerValidator;
    plotWidthTextControllerValidator = _plotWidthTextControllerValidator;
    plotAreaTextControllerValidator = _plotAreaTextControllerValidator;
    rentalValueTextControllerValidator = _rentalValueTextControllerValidator;
    marketRatesMinimumTextControllerValidator =
        _marketRatesMinimumTextControllerValidator;
    marketRatesMaximumTextControllerValidator =
        _marketRatesMaximumTextControllerValidator;
    remarkNo1TextControllerValidator = _remarkNo1TextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    refNoFocusNode?.dispose();
    refNoTextController?.dispose();

    banknameFocusNode?.dispose();
    banknameTextController?.dispose();

    enginerrnameFocusNode?.dispose();
    enginerrnameTextController?.dispose();

    dateFocusNode?.dispose();
    dateTextController?.dispose();

    applicantNameFocusNode?.dispose();
    applicantNameTextController?.dispose();

    addressline1FocusNode?.dispose();
    addressline1TextController?.dispose();

    addressline2FocusNode?.dispose();
    addressline2TextController?.dispose();

    localityFocusNode?.dispose();
    localityTextController?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();

    personMetAndContactFocusNode?.dispose();
    personMetAndContactTextController?.dispose();

    relationWithOwnerFocusNode?.dispose();
    relationWithOwnerTextController?.dispose();

    expandableExpandableController2.dispose();
    landmarkFocusNode?.dispose();
    landmarkTextController?.dispose();

    roadWidthFocusNode?.dispose();
    roadWidthTextController?.dispose();

    distanceFromCityFocusNode?.dispose();
    distanceFromCityTextController?.dispose();

    distanceFromStationFocusNode?.dispose();
    distanceFromStationTextController?.dispose();

    distanceFromBusFocusNode?.dispose();
    distanceFromBusTextController?.dispose();

    distanceFromHospitalFocusNode?.dispose();
    distanceFromHospitalTextController?.dispose();

    northFocusNode?.dispose();
    northTextController?.dispose();

    southFocusNode?.dispose();
    southTextController?.dispose();

    eastFocusNode?.dispose();
    eastTextController?.dispose();

    westFocusNode?.dispose();
    westTextController?.dispose();

    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    totalFloorsFocusNode?.dispose();
    totalFloorsTextController?.dispose();

    totalUnitsFocusNode?.dispose();
    totalUnitsTextController?.dispose();

    floorLocationFocusNode?.dispose();
    floorLocationTextController?.dispose();

    noofliftsFocusNode?.dispose();
    noofliftsTextController?.dispose();

    buildingAgeFocusNode?.dispose();
    buildingAgeTextController?.dispose();

    expandableExpandableController5.dispose();
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

    expandableExpandableController6.dispose();
    completionStageFocusNode?.dispose();
    completionStageTextController?.dispose();

    expandableExpandableController7.dispose();
    carpetAreaFocusNode?.dispose();
    carpetAreaTextController?.dispose();

    balconyAreaFocusNode?.dispose();
    balconyAreaTextController?.dispose();

    superAreaFocusNode?.dispose();
    superAreaTextController?.dispose();

    plotLengthFocusNode?.dispose();
    plotLengthTextController?.dispose();

    plotWidthFocusNode?.dispose();
    plotWidthTextController?.dispose();

    plotAreaFocusNode?.dispose();
    plotAreaTextController?.dispose();

    rentalValueFocusNode?.dispose();
    rentalValueTextController?.dispose();

    marketRatesMinimumFocusNode?.dispose();
    marketRatesMinimumTextController?.dispose();

    marketRatesMaximumFocusNode?.dispose();
    marketRatesMaximumTextController?.dispose();

    dealerNameFocusNode?.dispose();
    dealerNameTextController?.dispose();

    dealerContactFocusNode?.dispose();
    dealerContactTextController?.dispose();

    expandableExpandableController8.dispose();
    remarkNo1FocusNode?.dispose();
    remarkNo1TextController?.dispose();

    aadditionalRemarkFocusNode?.dispose();
    aadditionalRemarkTextController?.dispose();
  }

  /// Additional helper methods.
  String? get nameplateValue => nameplateValueController?.value;
  String? get plotDemarcatedValue => plotDemarcatedValueController?.value;
}
