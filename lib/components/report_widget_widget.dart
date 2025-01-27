import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'report_widget_model.dart';
export 'report_widget_model.dart';

class ReportWidgetWidget extends StatefulWidget {
  const ReportWidgetWidget({
    super.key,
    required this.reportDetails,
    required this.caseIndexInList,
  });

  final ResponseStruct? reportDetails;
  final int? caseIndexInList;

  @override
  State<ReportWidgetWidget> createState() => _ReportWidgetWidgetState();
}

class _ReportWidgetWidgetState extends State<ReportWidgetWidget> {
  late ReportWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.additionalRemarkNumber = widget.reportDetails?.inspectionFormData
                  .anyOtherInformation.isEmpty
          ? 1
          : widget
              .reportDetails?.inspectionFormData.anyOtherInformation.length;
      _model.additionalFloorNumber = widget.reportDetails?.inspectionFormData
                  .floorwiseDetails.isEmpty
          ? 1
          : widget.reportDetails!.inspectionFormData.floorwiseDetails.length;
      setState(() {});
    });

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.refNoTextController ??=
        TextEditingController(text: widget.reportDetails?.refNo);
    _model.refNoFocusNode ??= FocusNode();

    _model.banknameTextController ??=
        TextEditingController(text: widget.reportDetails?.clientName);
    _model.banknameFocusNode ??= FocusNode();

    _model.enginerrnameTextController ??=
        TextEditingController(text: FFAppState().username);
    _model.enginerrnameFocusNode ??= FocusNode();

    _model.dateTextController ??=
        TextEditingController(text: widget.reportDetails?.dateAssigned);
    _model.dateFocusNode ??= FocusNode();

    _model.applicantNameTextController ??=
        TextEditingController(text: widget.reportDetails?.partyName);
    _model.applicantNameFocusNode ??= FocusNode();

    _model.addressline1TextController ??=
        TextEditingController(text: widget.reportDetails?.addressLine1);
    _model.addressline1FocusNode ??= FocusNode();

    _model.addressline2TextController ??=
        TextEditingController(text: widget.reportDetails?.addressLine2);
    _model.addressline2FocusNode ??= FocusNode();

    _model.localityTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.locality);
    _model.localityFocusNode ??= FocusNode();

    _model.pincodeTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.pin);
    _model.pincodeFocusNode ??= FocusNode();

    _model.personMetAndContactTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.personMet);
    _model.personMetAndContactFocusNode ??= FocusNode();

    _model.relationWithOwnerTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.relationWithOwner);
    _model.relationWithOwnerFocusNode ??= FocusNode();

    _model.otherPropertyLocatedTextController ??= TextEditingController(
        text:
            widget.reportDetails?.inspectionFormData.otherPropertyLocatedIn);
    _model.otherPropertyLocatedFocusNode ??= FocusNode();

    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.landmarkTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.landMark);
    _model.landmarkFocusNode ??= FocusNode();

    _model.roadWidthTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.roadWidth);
    _model.roadWidthFocusNode ??= FocusNode();

    _model.distanceFromCityTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.cityCenter);
    _model.distanceFromCityFocusNode ??= FocusNode();

    _model.distanceFromStationTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.railwayStation);
    _model.distanceFromStationFocusNode ??= FocusNode();

    _model.distanceFromBusTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.busStop);
    _model.distanceFromBusFocusNode ??= FocusNode();

    _model.distanceFromHospitalTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.hospital);
    _model.distanceFromHospitalFocusNode ??= FocusNode();

    _model.northTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.north);
    _model.northFocusNode ??= FocusNode();

    _model.southTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.south);
    _model.southFocusNode ??= FocusNode();

    _model.eastTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.east);
    _model.eastFocusNode ??= FocusNode();

    _model.westTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.west);
    _model.westFocusNode ??= FocusNode();

    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.otherPermittedPropertyTextController ??= TextEditingController(
        text: widget
            .reportDetails?.inspectionFormData.otherPermittedUseOfProperty);
    _model.otherPermittedPropertyFocusNode ??= FocusNode();

    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.otherStructureTypeTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.otherStructureType);
    _model.otherStructureTypeFocusNode ??= FocusNode();

    _model.totalFloorsTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.noOfFloors);
    _model.totalFloorsFocusNode ??= FocusNode();

    _model.totalUnitsTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.unitsPerFloor);
    _model.totalUnitsFocusNode ??= FocusNode();

    _model.floorLocationTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.floorLocation);
    _model.floorLocationFocusNode ??= FocusNode();

    _model.noofliftsTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.noOfLifts);
    _model.noofliftsFocusNode ??= FocusNode();

    _model.buildingAgeTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.ageBuilding);
    _model.buildingAgeFocusNode ??= FocusNode();

    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
    _model.nameOfFloor1TextController ??= TextEditingController(
        text:
            widget.reportDetails!.inspectionFormData.floorwiseDetails.isNotEmpty
                ? widget.reportDetails?.inspectionFormData.floorwiseDetails
                    .first.floor
                : '');
    _model.nameOfFloor1FocusNode ??= FocusNode();

    _model.occupiedBy1TextController ??= TextEditingController(
        text:
            widget.reportDetails!.inspectionFormData.floorwiseDetails.isNotEmpty
                ? widget.reportDetails?.inspectionFormData.floorwiseDetails
                    .first.occupied
                : '');
    _model.occupiedBy1FocusNode ??= FocusNode();

    _model.usage1TextController ??= TextEditingController(
        text:
            widget.reportDetails!.inspectionFormData.floorwiseDetails.isNotEmpty
                ? widget.reportDetails?.inspectionFormData.floorwiseDetails
                    .first.usage
                : '');
    _model.usage1FocusNode ??= FocusNode();

    _model.accommodation1TextController ??= TextEditingController(
        text:
            widget.reportDetails!.inspectionFormData.floorwiseDetails.isNotEmpty
                ? widget.reportDetails?.inspectionFormData.floorwiseDetails
                    .first.accomodation
                : '');
    _model.accommodation1FocusNode ??= FocusNode();

    _model.actualAreaMeasured1TextController ??= TextEditingController(
        text:
            widget.reportDetails!.inspectionFormData.floorwiseDetails.isNotEmpty
                ? widget.reportDetails?.inspectionFormData.floorwiseDetails
                    .first.actualAreaMeasured
                : '');
    _model.actualAreaMeasured1FocusNode ??= FocusNode();

    _model.nameOfFloor2TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                2
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[1])
                ?.floor)
            : '');
    _model.nameOfFloor2FocusNode ??= FocusNode();

    _model.occupiedBy2TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                2
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[1])
                ?.occupied)
            : '');
    _model.occupiedBy2FocusNode ??= FocusNode();

    _model.usage2TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                2
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[1])
                ?.usage)
            : '');
    _model.usage2FocusNode ??= FocusNode();

    _model.accommodation2TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                2
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[1])
                ?.accomodation)
            : '');
    _model.accommodation2FocusNode ??= FocusNode();

    _model.actualAreaMeasured2TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                2
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[1])
                ?.actualAreaMeasured)
            : '');
    _model.actualAreaMeasured2FocusNode ??= FocusNode();

    _model.nameOfFloor3TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                3
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[2])
                ?.floor)
            : '');
    _model.nameOfFloor3FocusNode ??= FocusNode();

    _model.occupiedBy3TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                3
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[2])
                ?.occupied)
            : '');
    _model.occupiedBy3FocusNode ??= FocusNode();

    _model.usage3TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                3
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[2])
                ?.usage)
            : '');
    _model.usage3FocusNode ??= FocusNode();

    _model.accommodation3TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                3
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[2])
                ?.accomodation)
            : '');
    _model.accommodation3FocusNode ??= FocusNode();

    _model.actualAreaMeasured3TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                3
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[2])
                ?.actualAreaMeasured)
            : '');
    _model.actualAreaMeasured3FocusNode ??= FocusNode();

    _model.nameOfFloor4TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                4
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[3])
                ?.floor)
            : '');
    _model.nameOfFloor4FocusNode ??= FocusNode();

    _model.occupiedBy4TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                4
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[3])
                ?.occupied)
            : '');
    _model.occupiedBy4FocusNode ??= FocusNode();

    _model.usage4TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                4
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[3])
                ?.usage)
            : '');
    _model.usage4FocusNode ??= FocusNode();

    _model.accommodation4TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                4
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[3])
                ?.accomodation)
            : '');
    _model.accommodation4FocusNode ??= FocusNode();

    _model.actualAreaMeasured4TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                4
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[3])
                ?.actualAreaMeasured)
            : '');
    _model.actualAreaMeasured4FocusNode ??= FocusNode();

    _model.nameOfFloor5TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                5
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[4])
                ?.floor)
            : '');
    _model.nameOfFloor5FocusNode ??= FocusNode();

    _model.occupiedBy5TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                5
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[4])
                ?.occupied)
            : '');
    _model.occupiedBy5FocusNode ??= FocusNode();

    _model.usage5TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                5
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[4])
                ?.usage)
            : '');
    _model.usage5FocusNode ??= FocusNode();

    _model.accommodation5TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                5
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[4])
                ?.accomodation)
            : '');
    _model.accommodation5FocusNode ??= FocusNode();

    _model.actualAreaMeasured5TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.floorwiseDetails
                    .length >=
                5
            ? ((widget.reportDetails?.inspectionFormData.floorwiseDetails[4])
                ?.actualAreaMeasured)
            : '');
    _model.actualAreaMeasured5FocusNode ??= FocusNode();

    _model.expandableExpandableController6 =
        ExpandableController(initialExpanded: false);
    _model.otherConstructionStatusTextController ??= TextEditingController(
        text:
            widget.reportDetails?.inspectionFormData.otherConstructionStatus);
    _model.otherConstructionStatusFocusNode ??= FocusNode();

    _model.completionStageTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.completionState);
    _model.completionStageFocusNode ??= FocusNode();

    _model.otherRoofTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.otherRoof);
    _model.otherRoofFocusNode ??= FocusNode();

    _model.expandableExpandableController7 =
        ExpandableController(initialExpanded: false);
    _model.carpetAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.carpet != null &&
                widget.reportDetails?.inspectionFormData.carpet != ''
            ? functions.breakValueForInputAndDropdown(
                false, widget.reportDetails?.inspectionFormData.carpet)
            : '');
    _model.carpetAreaFocusNode ??= FocusNode();

    _model.balconyAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.balcony != null &&
                widget.reportDetails?.inspectionFormData.balcony != ''
            ? functions.breakValueForInputAndDropdown(
                false, widget.reportDetails?.inspectionFormData.balcony)
            : '');
    _model.balconyAreaFocusNode ??= FocusNode();

    _model.superAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.salableArea != null &&
                widget.reportDetails?.inspectionFormData.salableArea != ''
            ? functions.breakValueForInputAndDropdown(
                false, widget.reportDetails?.inspectionFormData.salableArea)
            : '');
    _model.superAreaFocusNode ??= FocusNode();

    _model.plotLengthTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.plotLength);
    _model.plotLengthFocusNode ??= FocusNode();

    _model.plotWidthTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.plotWidth);
    _model.plotWidthFocusNode ??= FocusNode();

    _model.plotAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.plotArea != null &&
                widget.reportDetails?.inspectionFormData.plotArea != ''
            ? functions.breakValueForInputAndDropdown(
                false, widget.reportDetails?.inspectionFormData.plotArea)
            : '');
    _model.plotAreaFocusNode ??= FocusNode();

    _model.rentalValueTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.rentalValue != null &&
                widget.reportDetails?.inspectionFormData.rentalValue != ''
            ? functions.breakValueForInputAndDropdown(
                false, widget.reportDetails?.inspectionFormData.rentalValue)
            : '');
    _model.rentalValueFocusNode ??= FocusNode();

    _model.marketRatesMinimumTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.minimumMarketRates !=
                    null &&
                widget.reportDetails?.inspectionFormData.minimumMarketRates !=
                    ''
            ? functions.breakValueForInputAndDropdown(false,
                widget.reportDetails?.inspectionFormData.minimumMarketRates)
            : '');
    _model.marketRatesMinimumFocusNode ??= FocusNode();

    _model.marketRatesMaximumTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.maximumMarketRates !=
                    null &&
                widget.reportDetails?.inspectionFormData.maximumMarketRates !=
                    ''
            ? functions.breakValueForInputAndDropdown(false,
                widget.reportDetails?.inspectionFormData.maximumMarketRates)
            : '');
    _model.marketRatesMaximumFocusNode ??= FocusNode();

    _model.dealerNameTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.dealerName);
    _model.dealerNameFocusNode ??= FocusNode();

    _model.dealerContactTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.dealerMobileNumber);
    _model.dealerContactFocusNode ??= FocusNode();

    _model.expandableExpandableController8 =
        ExpandableController(initialExpanded: false);
    _model.remarkNo1TextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.reasonPortionNotSeen);
    _model.remarkNo1FocusNode ??= FocusNode();

    _model.aadditionalRemark1TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.anyOtherInformation.isNotEmpty
            ? ((widget
                    .reportDetails?.inspectionFormData.anyOtherInformation[0])
                ?.info)
            : '');
    _model.aadditionalRemark1FocusNode ??= FocusNode();

    _model.aadditionalRemark2TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.anyOtherInformation
                    .length >=
                2
            ? ((widget
                    .reportDetails?.inspectionFormData.anyOtherInformation[1])
                ?.info)
            : '');
    _model.aadditionalRemark2FocusNode ??= FocusNode();

    _model.aadditionalRemark3TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.anyOtherInformation
                    .length >=
                3
            ? ((widget
                    .reportDetails?.inspectionFormData.anyOtherInformation[2])
                ?.info)
            : '');
    _model.aadditionalRemark3FocusNode ??= FocusNode();

    _model.aadditionalRemark4TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.anyOtherInformation
                    .length >=
                4
            ? ((widget
                    .reportDetails?.inspectionFormData.anyOtherInformation[3])
                ?.info)
            : '');
    _model.aadditionalRemark4FocusNode ??= FocusNode();

    _model.aadditionalRemark5TextController ??= TextEditingController(
        text: widget.reportDetails!.inspectionFormData.anyOtherInformation
                    .length >=
                5
            ? ((widget
                    .reportDetails?.inspectionFormData.anyOtherInformation[4])
                ?.info)
            : '');
    _model.aadditionalRemark5FocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController1,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'General Details',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 10.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Refo. No.*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.refNoTextController,
                                                focusNode:
                                                    _model.refNoFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText:
                                                      'Case Reference No.',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .refNoTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Bank*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .banknameTextController,
                                                focusNode:
                                                    _model.banknameFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Bank Name',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .banknameTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Engineer Name*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .enginerrnameTextController,
                                                focusNode: _model
                                                    .enginerrnameFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Engineer Name',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .enginerrnameTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Date*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.dateTextController,
                                                focusNode: _model.dateFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Date',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .dateTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Applicant/Party Name *',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .applicantNameTextController,
                                                focusNode: _model
                                                    .applicantNameFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Applicant Name',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .applicantNameTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Property Address Line 1 (As per Site Visit)*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .addressline1TextController,
                                                focusNode: _model
                                                    .addressline1FocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Address1',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .addressline1TextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Property Address Line 2 (As per Site Visit)',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .addressline2TextController,
                                                focusNode: _model
                                                    .addressline2FocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Address2',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .addressline2TextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'State*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: VdmsApiCallsGroup
                                                    .getAreasAPICall
                                                    .call(),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final statedropdownGetAreasAPIResponse =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .statedropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.statedropdownValue ??=
                                                          widget
                                                              .reportDetails
                                                              ?.inspectionFormData
                                                              .state,
                                                    ),
                                                    options: List<String>.from(
                                                        (getJsonField(
                                                      statedropdownGetAreasAPIResponse
                                                          .jsonBody,
                                                      r'''$.response.states[:].value''',
                                                      true,
                                                    ) as List)
                                                            .map<String>((s) =>
                                                                s.toString())
                                                            .toList()),
                                                    optionLabels: (getJsonField(
                                                      statedropdownGetAreasAPIResponse
                                                          .jsonBody,
                                                      r'''$.response.states[:].state_name''',
                                                      true,
                                                    ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .statedropdownValue =
                                                            val),
                                                    width: 326.0,
                                                    height: 56.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Select State',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 0.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                            Text(
                                              'Locality (As per Site Visit)*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .localityTextController,
                                                focusNode:
                                                    _model.localityFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Locality',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .localityTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Pincode (As per Site Visit)*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .pincodeTextController,
                                                focusNode:
                                                    _model.pincodeFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Pincode',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .pincodeTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Person Met & Contact No.*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .personMetAndContactTextController,
                                                focusNode: _model
                                                    .personMetAndContactFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText:
                                                      'Person met and contact',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .personMetAndContactTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Relation with owner of Person met*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .relationWithOwnerTextController,
                                                focusNode: _model
                                                    .relationWithOwnerFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText:
                                                      'Relation with owner',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .relationWithOwnerTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Property is located in an*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .propertylocationdropdownValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .propertylocationdropdownValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .propertyLocatedIn !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .propertyLocatedIn !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .propertyLocatedIn
                                                      : '1',
                                                ),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '7'
                                                ]),
                                                optionLabels: const [
                                                  'Authorized Colony',
                                                  'Un-authorized Regularized Colony',
                                                  'Un-authorized Colony',
                                                  'Regularized Colony',
                                                  'Lal Dora',
                                                  'Pvt. Colony',
                                                  'Other'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.propertylocationdropdownValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            if (_model
                                                    .propertylocationdropdownValue ==
                                                '7')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .otherPropertyLocatedTextController,
                                                  focusNode: _model
                                                      .otherPropertyLocatedFocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Other Property Location*',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .otherPropertyLocatedTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController2,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Surrounding Locality Details',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 10.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Land Mark / Nearby*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .landmarkTextController,
                                                focusNode:
                                                    _model.landmarkFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Landmark',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .landmarkTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Classification of Locality*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .classificationLocalityValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .classificationLocalityValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .classificationOfLocality !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .classificationOfLocality !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .classificationOfLocality
                                                      : '1',
                                                ),
                                                options: List<String>.from(
                                                    ['1', '2', '3', '4']),
                                                optionLabels: const [
                                                  'Middle Class',
                                                  'Upper Middle Class',
                                                  'High Class',
                                                  'Posh'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.classificationLocalityValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    'Select Locality Classification',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            Text(
                                              'Name Plate Fixed*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: FlutterFlowRadioButton(
                                                    options:
                                                        ['Yes', 'No'].toList(),
                                                    onChanged: ((widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'))
                                                        ? null
                                                        : (val) =>
                                                            setState(() {}),
                                                    controller: _model.nameplateValueController ??= FormFieldController<
                                                        String>((widget
                                                                    .reportDetails
                                                                    ?.inspectionFormData
                                                                    .namePlateFixed ==
                                                                '0') ||
                                                            (widget
                                                                    .reportDetails
                                                                    ?.inspectionFormData
                                                                    .namePlateFixed ==
                                                                '1') ||
                                                            (widget
                                                                    .reportDetails
                                                                    ?.inspectionFormData
                                                                    .namePlateFixed ==
                                                                'Yes')
                                                        ? 'Yes'
                                                        : 'No'),
                                                    optionHeight: 32.0,
                                                    optionWidth:
                                                        MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.3,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    selectedTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    buttonPosition:
                                                        RadioButtonPosition
                                                            .left,
                                                    direction: Axis.horizontal,
                                                    radioButtonColor:
                                                        const Color(0xFF0F61AB),
                                                    inactiveRadioButtonColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    toggleable: false,
                                                    horizontalAlignment:
                                                        WrapAlignment
                                                            .spaceBetween,
                                                    verticalAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Plot Demarcated at site*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FlutterFlowRadioButton(
                                                  options:
                                                      ['Yes', 'No'].toList(),
                                                  onChanged: ((widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'))
                                                      ? null
                                                      : (val) =>
                                                          setState(() {}),
                                                  controller: _model
                                                      .plotDemarcatedValueController ??= FormFieldController<String>((widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .propertyDemarcated ==
                                                              '0') ||
                                                          (widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .propertyDemarcated ==
                                                              '1') ||
                                                          (widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .propertyDemarcated ==
                                                              'Yes')
                                                      ? 'Yes'
                                                      : 'No'),
                                                  optionHeight: 32.0,
                                                  optionWidth:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.3,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  selectedTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  buttonPosition:
                                                      RadioButtonPosition.left,
                                                  direction: Axis.horizontal,
                                                  radioButtonColor:
                                                      const Color(0xFF0F61AB),
                                                  inactiveRadioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  toggleable: false,
                                                  horizontalAlignment:
                                                      WrapAlignment.start,
                                                  verticalAlignment:
                                                      WrapCrossAlignment.start,
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Road width (Approx)*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .roadWidthTextController,
                                                focusNode:
                                                    _model.roadWidthFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Road width',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .roadWidthTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Property Identified through*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                multiSelectController: _model
                                                        .propertyIdentifiedDropdownValueController ??=
                                                    FormListFieldController<
                                                        String>(_model
                                                            .propertyIdentifiedDropdownValue ??=
                                                        List<String>.from(
                                                  functions.convertStringToListForDropdowns(
                                                          widget
                                                              .reportDetails
                                                              ?.inspectionFormData
                                                              .propertyIdentified) ??
                                                      [],
                                                )),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '7',
                                                  '8',
                                                  '9',
                                                  '10',
                                                  '11'
                                                ]),
                                                optionLabels: const [
                                                  'Site Demarcation',
                                                  'Help of Applicant',
                                                  'Local Enquiry',
                                                  'Help of layout Plan',
                                                  'Easy to Identify',
                                                  'Identified by document',
                                                  'Additional Document required for identification',
                                                  'Difficult to Identify',
                                                  'Self Identified',
                                                  'Yes',
                                                  'No'
                                                ],
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    'Property Identified through',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 0.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: true,
                                                onMultiSelectChanged: (val) =>
                                                    setState(() => _model
                                                            .propertyIdentifiedDropdownValue =
                                                        val),
                                              ),
                                            ),
                                            Text(
                                              'Distance from City Center*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .distanceFromCityTextController,
                                                focusNode: _model
                                                    .distanceFromCityFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText:
                                                      'distance_from_city',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .distanceFromCityTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Distance from Nearest Railway Station*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .distanceFromStationTextController,
                                                focusNode: _model
                                                    .distanceFromStationFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText:
                                                      'distance_from_station',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .distanceFromStationTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Distance from Nearest Bus Stop*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .distanceFromBusTextController,
                                                focusNode: _model
                                                    .distanceFromBusFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'distance_from_bus',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .distanceFromBusTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Distance from Nearest Hospital*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .distanceFromHospitalTextController,
                                                focusNode: _model
                                                    .distanceFromHospitalFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText:
                                                      'distance from hospital',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .distanceFromHospitalTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Text(
                                                'Property Boundary Details (As per Site)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              const Color(0xFF0F61AB),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              'North*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.northTextController,
                                                focusNode:
                                                    _model.northFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'North',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .northTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'South*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.southTextController,
                                                focusNode:
                                                    _model.southFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'South',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .southTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'East*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.eastTextController,
                                                focusNode: _model.eastFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'East',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .eastTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'West*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.westTextController,
                                                focusNode: _model.westFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'West',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .westTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController3,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Property Details',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 10.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Type of Property*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .typeOfPropertyValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .typeOfPropertyValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .propertyType !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .propertyType !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .propertyType
                                                      : '1',
                                                ),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '7',
                                                  '8',
                                                  '9',
                                                  '10',
                                                  '11',
                                                  '12',
                                                  '13',
                                                  '14',
                                                  '15',
                                                  '16',
                                                  '17',
                                                  '18',
                                                  '19',
                                                  '20',
                                                  '21',
                                                  '22',
                                                  '23',
                                                  '24',
                                                  '25',
                                                  '26',
                                                  '27',
                                                  '28',
                                                  '29',
                                                  '30',
                                                  '31',
                                                  '29',
                                                  '30',
                                                  '31'
                                                ]),
                                                optionLabels: const [
                                                  'Warehouse',
                                                  'Commercial cum Residential',
                                                  'Mix Use',
                                                  'Commercial',
                                                  'Agriculture Land',
                                                  'Industrial',
                                                  'SCO (Shop cum Office)',
                                                  'SCF (Shop cum Flat)',
                                                  'Grain Market (Commercial)',
                                                  'Marble Market (Commercial)',
                                                  'IT (Information Technology)',
                                                  'Hospitality',
                                                  'Row House',
                                                  'Society Flat',
                                                  'Authority Flat',
                                                  'Developer Flat',
                                                  'Building',
                                                  'Commercial Building',
                                                  'Industrial Building',
                                                  'Shop',
                                                  'Office',
                                                  'Individual Floor',
                                                  'Residential',
                                                  'Developer Floor',
                                                  'Builder Floor',
                                                  'Non-Agriculture',
                                                  'Open Plot',
                                                  'Booth',
                                                  'Hospital',
                                                  'Institutional',
                                                  'Educational',
                                                  '',
                                                  '',
                                                  ''
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.typeOfPropertyValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Select Property',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            Text(
                                              'Permitted use of the property*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .permittedUsePropertyValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .permittedUsePropertyValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .permittedUseOfProperty !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .permittedUseOfProperty !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .permittedUseOfProperty
                                                      : '1',
                                                ),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '7',
                                                  '8',
                                                  '9',
                                                  '10',
                                                  '11',
                                                  '13',
                                                  '12'
                                                ]),
                                                optionLabels: const [
                                                  'Residential',
                                                  'Commercial',
                                                  'Industrial',
                                                  'Commercial cum Residential',
                                                  'Mix Land Use',
                                                  'Agricultural',
                                                  'Institutional',
                                                  'Nursery School',
                                                  'Primary School',
                                                  'IT-Information Technology',
                                                  'Warehouse',
                                                  'Industrial cum Commercial',
                                                  'Other'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.permittedUsePropertyValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            if (_model
                                                    .permittedUsePropertyValue ==
                                                '12')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .otherPermittedPropertyTextController,
                                                  focusNode: _model
                                                      .otherPermittedPropertyFocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Other Permitted Property*',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .otherPermittedPropertyTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController4,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Property Structure with Specification',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 10.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Type of Structure*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .typeOfStructureValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .typeOfStructureValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .structureType !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .structureType !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .structureType
                                                      : '1',
                                                ),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '8',
                                                  '9',
                                                  '10',
                                                  '7'
                                                ]),
                                                optionLabels: const [
                                                  'RCC Framed',
                                                  'Load Bearing Wall',
                                                  'Load Bearing Wall with RCC Components',
                                                  'RCC with GI Shed',
                                                  'RCC with Tin Shed',
                                                  'RCC with ACC Sheet',
                                                  'Load Bearing Wall with T-iron Roofing',
                                                  'Load Bearing Wall with Shed Roofing',
                                                  'RCC with T-iron Roofing',
                                                  'Other'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.typeOfStructureValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    'Select type of structure',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            if (_model.typeOfStructureValue ==
                                                '7')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .otherStructureTypeTextController,
                                                  focusNode: _model
                                                      .otherStructureTypeFocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Other Structure Type*',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .otherStructureTypeTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            Text(
                                              'Total No. of Floors*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .totalFloorsTextController,
                                                focusNode:
                                                    _model.totalFloorsFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Total floors',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .totalFloorsTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'No. of Units*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .totalUnitsTextController,
                                                focusNode:
                                                    _model.totalUnitsFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Total units\n',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .totalUnitsTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Floor Location',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .floorLocationTextController,
                                                focusNode: _model
                                                    .floorLocationFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Floor Location\n',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .floorLocationTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'No. of Lifts*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .noofliftsTextController,
                                                focusNode:
                                                    _model.noofliftsFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'No. of Lifts\n',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .noofliftsTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Building Age*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .buildingAgeTextController,
                                                focusNode:
                                                    _model.buildingAgeFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Building Age',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .buildingAgeTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController5,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Accommodation details - Floorwise',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 0.0, 10.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .nameOfFloor1TextController,
                                                      focusNode: _model
                                                          .nameOfFloor1FocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Name of Floor\n',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .nameOfFloor1TextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .occupiedBy1TextController,
                                                      focusNode: _model
                                                          .occupiedBy1FocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText: 'Occupied By',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .occupiedBy1TextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .usage1TextController,
                                                      focusNode: _model
                                                          .usage1FocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText: 'Usage\n',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .usage1TextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .accommodation1TextController,
                                                      focusNode: _model
                                                          .accommodation1FocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Accommodation',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .accommodation1TextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .actualAreaMeasured1TextController,
                                                      focusNode: _model
                                                          .actualAreaMeasured1FocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Actual Area Measured',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .actualAreaMeasured1TextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      2)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  5.0,
                                                                  20.0,
                                                                  5.0),
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 3.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      2)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .nameOfFloor2TextController,
                                                        focusNode: _model
                                                            .nameOfFloor2FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Name of Floor',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .nameOfFloor2TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      2)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .occupiedBy2TextController,
                                                        focusNode: _model
                                                            .occupiedBy2FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Occupied By',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .occupiedBy2TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      2)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .usage2TextController,
                                                        focusNode: _model
                                                            .usage2FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText: 'Usage\n',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .usage2TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      2)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .accommodation2TextController,
                                                        focusNode: _model
                                                            .accommodation2FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Accommodation',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .accommodation2TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      2)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .actualAreaMeasured2TextController,
                                                        focusNode: _model
                                                            .actualAreaMeasured2FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Actual Area Measured',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .actualAreaMeasured2TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      3)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  5.0,
                                                                  20.0,
                                                                  5.0),
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 3.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      3)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .nameOfFloor3TextController,
                                                        focusNode: _model
                                                            .nameOfFloor3FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Name of Floor',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .nameOfFloor3TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      3)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .occupiedBy3TextController,
                                                        focusNode: _model
                                                            .occupiedBy3FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Occupied By',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .occupiedBy3TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      3)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .usage3TextController,
                                                        focusNode: _model
                                                            .usage3FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText: 'Usage\n',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .usage3TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      3)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .accommodation3TextController,
                                                        focusNode: _model
                                                            .accommodation3FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Accommodation',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .accommodation3TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      3)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .actualAreaMeasured3TextController,
                                                        focusNode: _model
                                                            .actualAreaMeasured3FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Actual Area Measured',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .actualAreaMeasured3TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      4)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  5.0,
                                                                  20.0,
                                                                  5.0),
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 3.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      4)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .nameOfFloor4TextController,
                                                        focusNode: _model
                                                            .nameOfFloor4FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Name of Floor\n',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .nameOfFloor4TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      4)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .occupiedBy4TextController,
                                                        focusNode: _model
                                                            .occupiedBy4FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Occupied By',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .occupiedBy4TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      4)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .usage4TextController,
                                                        focusNode: _model
                                                            .usage4FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText: 'Usage\n',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .usage4TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      4)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .accommodation4TextController,
                                                        focusNode: _model
                                                            .accommodation4FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Accommodation',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .accommodation4TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      4)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .actualAreaMeasured4TextController,
                                                        focusNode: _model
                                                            .actualAreaMeasured4FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Actual Area Measured',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .actualAreaMeasured4TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      5)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  5.0,
                                                                  20.0,
                                                                  5.0),
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 3.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      5)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .nameOfFloor5TextController,
                                                        focusNode: _model
                                                            .nameOfFloor5FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Name of Floor\n',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .nameOfFloor5TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      5)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .occupiedBy5TextController,
                                                        focusNode: _model
                                                            .occupiedBy5FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Occupied By',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .occupiedBy5TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      5)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .usage5TextController,
                                                        focusNode: _model
                                                            .usage5FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText: 'Usage\n',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .usage5TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      5)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .accommodation5TextController,
                                                        focusNode: _model
                                                            .accommodation5FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Accommodation',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .accommodation5TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if (_model
                                                          .additionalFloorNumber >=
                                                      5)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .actualAreaMeasured5TextController,
                                                        focusNode: _model
                                                            .actualAreaMeasured5FocusNode,
                                                        autofocus: true,
                                                        readOnly: (widget
                                                                    .reportDetails
                                                                    ?.statusId ==
                                                                '2') ||
                                                            (widget.reportDetails
                                                                    ?.statusId ==
                                                                '3'),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          hintText:
                                                              'Actual Area Measured',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF1F4F8),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .actualAreaMeasured5TextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  if ((widget.reportDetails
                                                              ?.statusId !=
                                                          '2') &&
                                                      (widget.reportDetails
                                                              ?.statusId !=
                                                          '3'))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: ((widget
                                                                              .reportDetails
                                                                              ?.statusId ==
                                                                          '2') ||
                                                                      (widget.reportDetails
                                                                              ?.statusId ==
                                                                          '3'))
                                                                  ? null
                                                                  : () async {
                                                                      if (_model
                                                                              .additionalFloorNumber <
                                                                          5) {
                                                                        _model.additionalFloorNumber =
                                                                            _model.additionalFloorNumber +
                                                                                1;
                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          const SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Only 5 Floor Details Allowed.',
                                                                              style: TextStyle(
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 2000),
                                                                            backgroundColor:
                                                                                Color(0xFFEF393C),
                                                                          ),
                                                                        );
                                                                      }
                                                                    },
                                                              text: 'ADD MORE',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0xFF0F61AB),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: ((widget
                                                                              .reportDetails
                                                                              ?.statusId ==
                                                                          '2') ||
                                                                      (widget.reportDetails
                                                                              ?.statusId ==
                                                                          '3'))
                                                                  ? null
                                                                  : () async {
                                                                      if (_model
                                                                              .additionalFloorNumber >=
                                                                          2) {
                                                                        _model.additionalFloorNumber =
                                                                            _model.additionalFloorNumber +
                                                                                -1;
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                              text: 'REMOVE',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0xFFEF393C),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 15.0)),
                                                      ),
                                                    ),
                                                ].divide(const SizedBox(height: 5.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController6,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Quality of Construction',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 10.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Construction Status*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .constructionStatusValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .constructionStatusValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .constructionStatus !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .constructionStatus !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .constructionStatus
                                                      : '1',
                                                ),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '5',
                                                  '6',
                                                  '4'
                                                ]),
                                                optionLabels: const [
                                                  'Fully Completed',
                                                  'Under Construction',
                                                  'Proposed',
                                                  'Open Plot',
                                                  'N.A.',
                                                  'Other'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.constructionStatusValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            if (_model
                                                    .constructionStatusValue ==
                                                '4')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .otherConstructionStatusTextController,
                                                  focusNode: _model
                                                      .otherConstructionStatusFocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Other Construction Status*',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .otherConstructionStatusTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            Text(
                                              'Completion Stage (%)*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .completionStageTextController,
                                                focusNode: _model
                                                    .completionStageFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Completion Status',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .completionStageTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Roof/Terrace*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .roofTerraceValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .roofTerraceValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .roof !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .roof !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .roof
                                                      : '1',
                                                ),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '8',
                                                  '9',
                                                  '10',
                                                  '7'
                                                ]),
                                                optionLabels: const [
                                                  'RCC',
                                                  'RCC / Tin-Shed',
                                                  'RCC/Tin-shed/GI Shed',
                                                  'RCC/Tin-shed/GI Shed/ACC Shed',
                                                  'T-iron',
                                                  'RCC/T-iron',
                                                  'RCC/Shed',
                                                  'N.A.',
                                                  'PVC & Teen Shade',
                                                  'Other'
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                            .roofTerraceValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            if (_model.roofTerraceValue == '7')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .otherRoofTextController,
                                                  focusNode:
                                                      _model.otherRoofFocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText: 'Other Roof*',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .otherRoofTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            Text(
                                              'Walls, Plaster and Painting*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                multiSelectController: _model
                                                        .wallsDropdownValueController ??=
                                                    FormListFieldController<
                                                        String>(_model
                                                            .wallsDropdownValue ??=
                                                        List<String>.from(
                                                  functions.convertStringToListForDropdowns(
                                                          widget
                                                              .reportDetails
                                                              ?.inspectionFormData
                                                              .wallPlasterPainting) ??
                                                      [],
                                                )),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '7',
                                                  '8',
                                                  '9',
                                                  '10',
                                                  '11',
                                                  '13',
                                                  '14',
                                                  '15',
                                                  '12'
                                                ]),
                                                optionLabels: const [
                                                  'Snowcem Exterior',
                                                  'Exterior paint',
                                                  'Texture Paint',
                                                  'Stone Cladding',
                                                  'Gritwash exterior',
                                                  'White wash exterior',
                                                  'Glass Exterior',
                                                  'PoP with OBD on wall',
                                                  'Superior quality paint',
                                                  'Dry Distemper',
                                                  'Colour Wash',
                                                  'Butch Exterior',
                                                  'Tiles Exterior',
                                                  'PCC Exterior',
                                                  'NA'
                                                ],
                                                width: 326.0,
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: true,
                                                onMultiSelectChanged: (val) =>
                                                    setState(() => _model
                                                            .wallsDropdownValue =
                                                        val),
                                              ),
                                            ),
                                            Text(
                                              'Doors, Windows And Kitchen*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                multiSelectController: _model
                                                        .doorsWindowsDropdownValueController ??=
                                                    FormListFieldController<
                                                        String>(_model
                                                            .doorsWindowsDropdownValue ??=
                                                        List<String>.from(
                                                  functions.convertStringToListForDropdowns(
                                                          widget
                                                              .reportDetails
                                                              ?.inspectionFormData
                                                              .doorsWindows) ??
                                                      [],
                                                )),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '7',
                                                  '8',
                                                  '10',
                                                  '9'
                                                ]),
                                                optionLabels: const [
                                                  'Glass Door',
                                                  'Paneled Door',
                                                  'Flush Doors',
                                                  'Iron Gate',
                                                  'Rolling Shutter',
                                                  'Modular Kitchen',
                                                  'Wooden Cabinet Fixed',
                                                  'Ordinary',
                                                  'Glazed Windows',
                                                  'NA'
                                                ],
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: true,
                                                onMultiSelectChanged: (val) =>
                                                    setState(() => _model
                                                            .doorsWindowsDropdownValue =
                                                        val),
                                              ),
                                            ),
                                            Text(
                                              'Flooring Type*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                multiSelectController: _model
                                                        .floorTypeValueController ??=
                                                    FormListFieldController<
                                                        String>(_model
                                                            .floorTypeValue ??=
                                                        List<String>.from(
                                                  functions.convertStringToListForDropdowns(
                                                          widget
                                                              .reportDetails
                                                              ?.inspectionFormData
                                                              .flooringType) ??
                                                      [],
                                                )),
                                                options: List<String>.from([
                                                  '1',
                                                  '2',
                                                  '3',
                                                  '4',
                                                  '5',
                                                  '6',
                                                  '7',
                                                  '8',
                                                  '10',
                                                  '11',
                                                  '12',
                                                  '9'
                                                ]),
                                                optionLabels: const [
                                                  'Marble Flooring',
                                                  'Tiles Flooring',
                                                  'Mosaic Flooring',
                                                  'Vitrified Tiles',
                                                  'Wooden Flooring',
                                                  'Italian Marble',
                                                  'PCC Flooring',
                                                  'RCC Flooring',
                                                  'Kota Stone',
                                                  'Concrete Flooring',
                                                  'Ceramic',
                                                  'NA'
                                                ],
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: true,
                                                onMultiSelectChanged: (val) =>
                                                    setState(() => _model
                                                        .floorTypeValue = val),
                                              ),
                                            ),
                                            Text(
                                              'Interior Construction Quality*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .interiorConstructionQualityValueController ??=
                                                    FormFieldController<String>(
                                                  _model.interiorConstructionQualityValue ??=
                                                      '1',
                                                ),
                                                options: List<String>.from(
                                                    ['1', '2', '3', '4', '5']),
                                                optionLabels: const [
                                                  'Excellent',
                                                  'Good',
                                                  'Average',
                                                  'Poor',
                                                  'NA'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.interiorConstructionQualityValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            Text(
                                              'Exterior Construction Quality*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .exteriorConstructionQualityValueController ??=
                                                    FormFieldController<String>(
                                                  _model.exteriorConstructionQualityValue ??=
                                                      '1',
                                                ),
                                                options: List<String>.from(
                                                    ['1', '2', '3', '4', '5']),
                                                optionLabels: const [
                                                  'Excellent',
                                                  'Good',
                                                  'Average',
                                                  'Poor',
                                                  'NA'
                                                ],
                                                onChanged: (val) => setState(() =>
                                                    _model.exteriorConstructionQualityValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController7,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Valuation',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 10.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Select Valuation Type*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .valuationTypeValueController ??=
                                                    FormFieldController<String>(
                                                  _model
                                                      .valuationTypeValue ??= widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .valuationType !=
                                                              null &&
                                                          widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .valuationType !=
                                                              ''
                                                      ? widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .valuationType
                                                      : '1',
                                                ),
                                                options: List<String>.from(
                                                    ['1', '2', '3']),
                                                optionLabels: const [
                                                  'Valuation of Shop / SCO / SCF / Office / Residential Flats / Villa',
                                                  'Valuation of Individual Floor / Builder Floor / Developer Floor',
                                                  'Valuation of Land and Building'
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                            .valuationTypeValue =
                                                        val),
                                                width: 326.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF1F4F8),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                disabled: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                            Text(
                                              'Carpet / Covered Area',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .carpetAreaTextController,
                                                      focusNode: _model
                                                          .carpetAreaFocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Carpet / Covered Area',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .carpetAreaTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .carpetAreaDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .carpetAreaDropdownValue ??= (widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .carpet !=
                                                                      null &&
                                                                  widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .carpet !=
                                                                      '') &&
                                                              (widget
                                                                      .reportDetails
                                                                      ?.inspectionFormData
                                                                      .carpet !=
                                                                  '##')
                                                          ? functions.breakValueForInputAndDropdown(
                                                              true,
                                                              widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .carpet)
                                                          : '1',
                                                    ),
                                                    options: List<String>.from([
                                                      '1',
                                                      '2',
                                                      '3',
                                                      '4',
                                                      '5',
                                                      '6',
                                                      '7',
                                                      '8',
                                                      '9',
                                                      '10'
                                                    ]),
                                                    optionLabels: const [
                                                      'Sq.Ft.',
                                                      'Sq.Mtr.',
                                                      'Sq.Yds.',
                                                      'Acre',
                                                      'Hectare',
                                                      'Bigha',
                                                      'Biswa',
                                                      'Biswani',
                                                      'Kanal',
                                                      'Marla'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .carpetAreaDropdownValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Balcony Area',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .balconyAreaTextController,
                                                      focusNode: _model
                                                          .balconyAreaFocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Balcony(ies) Area',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .balconyAreaTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .balconyAreaDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .balconyAreaDropdownValue ??= (widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .balcony !=
                                                                      null &&
                                                                  widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .balcony !=
                                                                      '') &&
                                                              (widget
                                                                      .reportDetails
                                                                      ?.inspectionFormData
                                                                      .balcony !=
                                                                  '##')
                                                          ? functions.breakValueForInputAndDropdown(
                                                              true,
                                                              widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .balcony)
                                                          : '1',
                                                    ),
                                                    options: List<String>.from([
                                                      '1',
                                                      '2',
                                                      '3',
                                                      '4',
                                                      '5',
                                                      '6',
                                                      '7',
                                                      '8',
                                                      '9',
                                                      '10'
                                                    ]),
                                                    optionLabels: const [
                                                      'Sq.Ft.',
                                                      'Sq.Mtr.',
                                                      'Sq.Yds.',
                                                      'Acre',
                                                      'Hectare',
                                                      'Bigha',
                                                      'Biswa',
                                                      'Biswani',
                                                      'Kanal',
                                                      'Marla'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .balconyAreaDropdownValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Super Area / SBUA',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .superAreaTextController,
                                                      focusNode: _model
                                                          .superAreaFocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Super Area / SBUA',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .superAreaTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .superAreaDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .superAreaDropdownValue ??= (widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .salableArea !=
                                                                      null &&
                                                                  widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .salableArea !=
                                                                      '') &&
                                                              (widget
                                                                      .reportDetails
                                                                      ?.inspectionFormData
                                                                      .salableArea !=
                                                                  '##')
                                                          ? functions.breakValueForInputAndDropdown(
                                                              true,
                                                              widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .salableArea)
                                                          : '1',
                                                    ),
                                                    options: List<String>.from([
                                                      '1',
                                                      '2',
                                                      '3',
                                                      '4',
                                                      '5',
                                                      '6',
                                                      '7',
                                                      '8',
                                                      '9',
                                                      '10'
                                                    ]),
                                                    optionLabels: const [
                                                      'Sq.Ft.',
                                                      'Sq.Mtr.',
                                                      'Sq.Yds.',
                                                      'Acre',
                                                      'Hectare',
                                                      'Bigha',
                                                      'Biswa',
                                                      'Biswani',
                                                      'Kanal',
                                                      'Marla'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .superAreaDropdownValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Plot Dimensions',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              const Color(0xFF0F61AB),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Length in Sq. ft.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .plotLengthTextController,
                                                focusNode:
                                                    _model.plotLengthFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Length in Sq. ft.',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .plotLengthTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Width in Sq. ft.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .plotWidthTextController,
                                                focusNode:
                                                    _model.plotWidthFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Width in Sq. ft.',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .plotWidthTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Plot Area',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .plotAreaTextController,
                                                      focusNode: _model
                                                          .plotAreaFocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText: 'Plot Area',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .plotAreaTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .plotAreaDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .plotAreaDropdownValue ??= (widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .plotArea !=
                                                                      null &&
                                                                  widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .plotArea !=
                                                                      '') &&
                                                              (widget
                                                                      .reportDetails
                                                                      ?.inspectionFormData
                                                                      .plotArea !=
                                                                  '##')
                                                          ? functions.breakValueForInputAndDropdown(
                                                              true,
                                                              widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .plotArea)
                                                          : '1',
                                                    ),
                                                    options: List<String>.from([
                                                      '1',
                                                      '2',
                                                      '3',
                                                      '4',
                                                      '5',
                                                      '6',
                                                      '7',
                                                      '8',
                                                      '9',
                                                      '10'
                                                    ]),
                                                    optionLabels: const [
                                                      'Sq.Ft.',
                                                      'Sq.Mtr.',
                                                      'Sq.Yds.',
                                                      'Acre',
                                                      'Hectare',
                                                      'Bigha',
                                                      'Biswa',
                                                      'Biswani',
                                                      'Kanal',
                                                      'Marla'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .plotAreaDropdownValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Rental Value',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .rentalValueTextController,
                                                      focusNode: _model
                                                          .rentalValueFocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Rental Value',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .rentalValueTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .rentalDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .rentalDropdownValue ??= (widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .rentalValue !=
                                                                      null &&
                                                                  widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .rentalValue !=
                                                                      '') &&
                                                              (widget
                                                                      .reportDetails
                                                                      ?.inspectionFormData
                                                                      .rentalValue !=
                                                                  '##')
                                                          ? functions.breakValueForInputAndDropdown(
                                                              true,
                                                              widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .rentalValue)
                                                          : '1',
                                                    ),
                                                    options: List<String>.from([
                                                      '1',
                                                      '2',
                                                      '3',
                                                      '4',
                                                      '5',
                                                      '6',
                                                      '7',
                                                      '8',
                                                      '9',
                                                      '10'
                                                    ]),
                                                    optionLabels: const [
                                                      'Sq.Ft.',
                                                      'Sq.Mtr.',
                                                      'Sq.Yds.',
                                                      'Acre',
                                                      'Hectare',
                                                      'Bigha',
                                                      'Biswa',
                                                      'Biswani',
                                                      'Kanal',
                                                      'Marla'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .rentalDropdownValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Market rates of properties - Minimum',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .marketRatesMinimumTextController,
                                                      focusNode: _model
                                                          .marketRatesMinimumFocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Minimum rates',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .marketRatesMinimumTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .marketMinimumDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .marketMinimumDropdownValue ??= (widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .minimumMarketRates !=
                                                                      null &&
                                                                  widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .minimumMarketRates !=
                                                                      '') &&
                                                              (widget
                                                                      .reportDetails
                                                                      ?.inspectionFormData
                                                                      .minimumMarketRates !=
                                                                  '##')
                                                          ? functions.breakValueForInputAndDropdown(
                                                              true,
                                                              widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .minimumMarketRates)
                                                          : '1',
                                                    ),
                                                    options: List<String>.from([
                                                      '1',
                                                      '2',
                                                      '3',
                                                      '4',
                                                      '5',
                                                      '6',
                                                      '7',
                                                      '8',
                                                      '9',
                                                      '10'
                                                    ]),
                                                    optionLabels: const [
                                                      'Sq.Ft.',
                                                      'Sq.Mtr.',
                                                      'Sq.Yds.',
                                                      'Acre',
                                                      'Hectare',
                                                      'Bigha',
                                                      'Biswa',
                                                      'Biswani',
                                                      'Kanal',
                                                      'Marla'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .marketMinimumDropdownValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Market rates of properties - Maximum',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .marketRatesMaximumTextController,
                                                      focusNode: _model
                                                          .marketRatesMaximumFocusNode,
                                                      autofocus: true,
                                                      readOnly: (widget
                                                                  .reportDetails
                                                                  ?.statusId ==
                                                              '2') ||
                                                          (widget.reportDetails
                                                                  ?.statusId ==
                                                              '3'),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                        hintText:
                                                            'Maximum rates',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF1F4F8),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      validator: _model
                                                          .marketRatesMaximumTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .marketMaximumDropdownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model
                                                          .marketMaximumDropdownValue ??= (widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .maximumMarketRates !=
                                                                      null &&
                                                                  widget
                                                                          .reportDetails
                                                                          ?.inspectionFormData
                                                                          .maximumMarketRates !=
                                                                      '') &&
                                                              (widget
                                                                      .reportDetails
                                                                      ?.inspectionFormData
                                                                      .maximumMarketRates !=
                                                                  '##')
                                                          ? functions.breakValueForInputAndDropdown(
                                                              true,
                                                              widget
                                                                  .reportDetails
                                                                  ?.inspectionFormData
                                                                  .maximumMarketRates)
                                                          : '1',
                                                    ),
                                                    options: List<String>.from([
                                                      '1',
                                                      '2',
                                                      '3',
                                                      '4',
                                                      '5',
                                                      '6',
                                                      '7',
                                                      '8',
                                                      '9',
                                                      '10'
                                                    ]),
                                                    optionLabels: const [
                                                      'Sq.Ft.',
                                                      'Sq.Mtr.',
                                                      'Sq.Yds.',
                                                      'Acre',
                                                      'Hectare',
                                                      'Bigha',
                                                      'Biswa',
                                                      'Biswani',
                                                      'Kanal',
                                                      'Marla'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .marketMaximumDropdownValue =
                                                            val),
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF1F4F8),
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId ==
                                                            '2') ||
                                                        (widget.reportDetails
                                                                ?.statusId ==
                                                            '3'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Dealer Name',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .dealerNameTextController,
                                                focusNode:
                                                    _model.dealerNameFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Dealer Name',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .dealerNameTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Text(
                                              'Dealer Mobile Number',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .dealerContactTextController,
                                                focusNode: _model
                                                    .dealerContactFocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Dealer Mobile',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .dealerContactTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController8,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Brief Description of the Property',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.03,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 10.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Remark No. 1',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .remarkNo1TextController,
                                                focusNode:
                                                    _model.remarkNo1FocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText: 'Remark No.1',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .remarkNo1TextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .aadditionalRemark1TextController,
                                                focusNode: _model
                                                    .aadditionalRemark1FocusNode,
                                                autofocus: true,
                                                readOnly: (widget.reportDetails
                                                            ?.statusId ==
                                                        '2') ||
                                                    (widget.reportDetails
                                                            ?.statusId ==
                                                        '3'),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  hintText:
                                                      'Additional Remark 1',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                validator: _model
                                                    .aadditionalRemark1TextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            if (_model
                                                    .additionalRemarkNumber! >=
                                                2)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .aadditionalRemark2TextController,
                                                  focusNode: _model
                                                      .aadditionalRemark2FocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Additional Remark 2',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .aadditionalRemark2TextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            if (_model
                                                    .additionalRemarkNumber! >=
                                                3)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .aadditionalRemark3TextController,
                                                  focusNode: _model
                                                      .aadditionalRemark3FocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Additional Remark 3',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .aadditionalRemark3TextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            if (_model
                                                    .additionalRemarkNumber! >=
                                                4)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .aadditionalRemark4TextController,
                                                  focusNode: _model
                                                      .aadditionalRemark4FocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Additional Remark 4',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .aadditionalRemark4TextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            if (_model
                                                    .additionalRemarkNumber! >=
                                                5)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .aadditionalRemark5TextController,
                                                  focusNode: _model
                                                      .aadditionalRemark5FocusNode,
                                                  autofocus: true,
                                                  readOnly: (widget
                                                              .reportDetails
                                                              ?.statusId ==
                                                          '2') ||
                                                      (widget.reportDetails
                                                              ?.statusId ==
                                                          '3'),
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintText:
                                                        'Additional Remark 5',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFFF5F5F5),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  validator: _model
                                                      .aadditionalRemark5TextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            if ((widget.reportDetails
                                                        ?.statusId !=
                                                    '2') &&
                                                (widget.reportDetails
                                                        ?.statusId !=
                                                    '3'))
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: ((widget
                                                                        .reportDetails
                                                                        ?.statusId ==
                                                                    '2') ||
                                                                (widget.reportDetails
                                                                        ?.statusId ==
                                                                    '3'))
                                                            ? null
                                                            : () async {
                                                                if (_model
                                                                        .additionalRemarkNumber! <
                                                                    5) {
                                                                  _model.additionalRemarkNumber =
                                                                      _model.additionalRemarkNumber! +
                                                                          1;
                                                                  setState(
                                                                      () {});
                                                                } else {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    const SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Only 5 Additional Remarks Allowed.',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      backgroundColor:
                                                                          Color(
                                                                              0xFFEF393C),
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                        text: 'ADD MORE',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              const Color(0xFF0F61AB),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: ((widget
                                                                        .reportDetails
                                                                        ?.statusId ==
                                                                    '2') ||
                                                                (widget.reportDetails
                                                                        ?.statusId ==
                                                                    '3'))
                                                            ? null
                                                            : () async {
                                                                if (_model
                                                                        .additionalRemarkNumber! >=
                                                                    2) {
                                                                  _model.additionalRemarkNumber =
                                                                      _model.additionalRemarkNumber! +
                                                                          -1;
                                                                  setState(
                                                                      () {});
                                                                }
                                                              },
                                                        text: 'REMOVE',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              const Color(0xFFEF393C),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 15.0)),
                                                ),
                                              ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 20.0, 20.0, 0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if ((widget.reportDetails?.statusId == '1') ||
                                (widget.reportDetails?.statusId == '4') ||
                                (widget.reportDetails?.statusId == '5'))
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (widget.reportDetails?.statusId ==
                                        '1') {
                                      _model.validateFormFields1 = true;
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.statedropdownValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model
                                              .propertylocationdropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.classificationLocalityValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.nameplateValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.plotDemarcatedValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model
                                              .propertyIdentifiedDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.typeOfPropertyValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.permittedUsePropertyValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.typeOfStructureValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.constructionStatusValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.roofTerraceValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.wallsDropdownValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.doorsWindowsDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.floorTypeValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model
                                              .interiorConstructionQualityValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model
                                              .exteriorConstructionQualityValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.valuationTypeValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.carpetAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.balconyAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.superAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.plotAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.rentalDropdownValue == null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.marketMinimumDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.marketMaximumDropdownValue ==
                                          null) {
                                        _model.validateFormFields1 = false;
                                      }
                                      if (_model.validateFormFields1!) {
                                        FFAppState().addToCaseDetails(
                                            widget.reportDetails!);
                                        FFAppState().updateCaseDetailsAtIndex(
                                          functions.getDraftCaseIndexInList(
                                              FFAppState().caseDetails.toList(),
                                              widget.reportDetails)!,
                                          (e) => e
                                            ..updateInspectionFormData(
                                              (e) => e
                                                ..personMet = _model
                                                    .personMetAndContactTextController
                                                    .text
                                                ..propertyLocatedIn = _model
                                                    .propertylocationdropdownValue
                                                ..address1 = _model
                                                    .addressline1TextController
                                                    .text
                                                ..address2 = _model
                                                    .addressline2TextController
                                                    .text
                                                ..state =
                                                    _model.statedropdownValue
                                                ..city =
                                                    widget.reportDetails?.city
                                                ..locality = _model
                                                    .localityTextController.text
                                                ..pin = _model
                                                    .pincodeTextController.text
                                                ..relationWithOwner = _model
                                                    .relationWithOwnerTextController
                                                    .text
                                                ..roadWidth = _model
                                                    .roadWidthTextController
                                                    .text
                                                ..landMark = _model
                                                    .landmarkTextController.text
                                                ..classificationOfLocality = _model
                                                    .classificationLocalityValue
                                                ..namePlateFixed =
                                                    _model.nameplateValue
                                                ..propertyDemarcated =
                                                    _model.plotDemarcatedValue
                                                ..propertyIdentified = functions
                                                    .createCommaSeparatedStringFromList(
                                                        _model
                                                            .propertyIdentifiedDropdownValue!
                                                            .toList())
                                                ..cityCenter = _model
                                                    .distanceFromCityTextController
                                                    .text
                                                ..railwayStation = _model
                                                    .distanceFromStationTextController
                                                    .text
                                                ..busStop = _model
                                                    .distanceFromBusTextController
                                                    .text
                                                ..hospital = _model
                                                    .distanceFromHospitalTextController
                                                    .text
                                                ..permittedUseOfProperty = _model
                                                    .permittedUsePropertyValue
                                                ..propertyType =
                                                    _model.typeOfPropertyValue
                                                ..north = _model
                                                    .northTextController.text
                                                ..east = _model
                                                    .eastTextController.text
                                                ..south = _model
                                                    .southTextController.text
                                                ..west = _model
                                                    .westTextController.text
                                                ..noOfFloors = _model
                                                    .totalFloorsTextController
                                                    .text
                                                ..noOfLifts = _model
                                                    .noofliftsTextController
                                                    .text
                                                ..floorLocation = _model
                                                    .floorLocationTextController
                                                    .text
                                                ..structureType =
                                                    _model.typeOfStructureValue
                                                ..ageBuilding = _model
                                                    .buildingAgeTextController
                                                    .text
                                                ..constructionStatus = _model
                                                    .constructionStatusValue
                                                ..completionState = _model
                                                    .completionStageTextController
                                                    .text
                                                ..roof = _model.roofTerraceValue
                                                ..unitsPerFloor = _model
                                                    .totalUnitsTextController
                                                    .text
                                                ..wallPlasterPainting = functions
                                                    .convertListDropdownsToHashSeparateStringForDraftReport(
                                                        _model
                                                            .wallsDropdownValue
                                                            ?.toList())
                                                ..doorsWindows = functions
                                                    .convertListDropdownsToHashSeparateStringForDraftReport(
                                                        _model
                                                            .doorsWindowsDropdownValue
                                                            ?.toList())
                                                ..flooringType = functions
                                                    .convertListDropdownsToHashSeparateStringForDraftReport(
                                                        _model.floorTypeValue
                                                            ?.toList())
                                                ..interiorConstructionQuality =
                                                    _model
                                                        .interiorConstructionQualityValue
                                                ..exteriorConstructionQuality =
                                                    _model
                                                        .exteriorConstructionQualityValue
                                                ..valuationType =
                                                    _model.valuationTypeValue
                                                ..carpet =
                                                    '${_model.carpetAreaTextController.text}##${_model.carpetAreaDropdownValue}'
                                                ..balcony =
                                                    '${_model.balconyAreaTextController.text}##${_model.balconyAreaDropdownValue}'
                                                ..salableArea =
                                                    '${_model.superAreaTextController.text}##${_model.superAreaDropdownValue}'
                                                ..plotLength = _model
                                                    .plotLengthTextController
                                                    .text
                                                ..plotWidth = _model
                                                    .plotWidthTextController
                                                    .text
                                                ..plotArea =
                                                    '${_model.plotAreaTextController.text}##${_model.plotAreaDropdownValue}'
                                                ..rentalValue =
                                                    '${_model.rentalValueTextController.text}##${_model.rentalDropdownValue}'
                                                ..minimumMarketRates =
                                                    '${_model.marketRatesMinimumTextController.text}##${_model.marketMinimumDropdownValue}'
                                                ..maximumMarketRates =
                                                    '${_model.marketMaximumDropdownValue}##${_model.marketMaximumDropdownValue}'
                                                ..dealerName = _model
                                                    .dealerNameTextController
                                                    .text
                                                ..dealerMobileNumber = _model
                                                    .dealerContactTextController
                                                    .text
                                                ..otherStructureType = _model
                                                    .otherStructureTypeTextController
                                                    .text
                                                ..otherPropertyLocatedIn = _model
                                                    .otherPropertyLocatedTextController
                                                    .text
                                                ..otherPermittedUseOfProperty =
                                                    _model
                                                        .otherPermittedPropertyTextController
                                                        .text
                                                ..otherConstructionStatus = _model
                                                    .otherConstructionStatusTextController
                                                    .text
                                                ..otherRoof = _model
                                                    .otherRoofTextController
                                                    .text
                                                ..reasonPortionNotSeen = _model
                                                    .remarkNo1TextController
                                                    .text
                                                ..anyOtherInformation = functions
                                                    .convertAdditionalRemarkToDataType(
                                                        _model
                                                            .aadditionalRemark1TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark2TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark3TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark4TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark5TextController
                                                            .text,
                                                        _model
                                                            .additionalRemarkNumber!)!
                                                    .toList()
                                                ..floorwiseDetails = functions
                                                    .convertFloorDetailsToDataType(
                                                        _model
                                                            .nameOfFloor1TextController
                                                            .text,
                                                        _model
                                                            .usage1TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy1TextController
                                                            .text,
                                                        _model
                                                            .accommodation1TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured1TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor2TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor3TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor4TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor5TextController
                                                            .text,
                                                        _model
                                                            .usage2TextController
                                                            .text,
                                                        _model
                                                            .usage3TextController
                                                            .text,
                                                        _model
                                                            .usage4TextController
                                                            .text,
                                                        _model
                                                            .usage5TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy2TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy3TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy4TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy5TextController
                                                            .text,
                                                        _model
                                                            .accommodation2TextController
                                                            .text,
                                                        _model
                                                            .accommodation3TextController
                                                            .text,
                                                        _model
                                                            .accommodation4TextController
                                                            .text,
                                                        _model
                                                            .accommodation5TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured2TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured3TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured4TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured5TextController
                                                            .text,
                                                        _model
                                                            .additionalFloorNumber)
                                                    .toList(),
                                            )
                                            ..statusId = '5'
                                            ..statusName =
                                                'Ready For Draft Report',
                                        );
                                        FFAppState().update(() {});
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Report Saved Successfully.',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 1500),
                                            backgroundColor: Color(0xFFFF8C25),
                                          ),
                                        );
                                        context.safePop();
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                          'case_details_screen',
                                          queryParameters: {
                                            'selectedCaseDetails':
                                                serializeParam(
                                              FFAppState().caseDetails[functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.reportDetails)!],
                                              ParamType.DataStruct,
                                            ),
                                            'currentCaseIndex': serializeParam(
                                              widget.caseIndexInList,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Please fill the report form fields',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 2500),
                                            backgroundColor: Color(0xFFFF0000),
                                          ),
                                        );
                                      }
                                    } else {
                                      _model.validateFormFields = true;
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.statedropdownValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model
                                              .propertylocationdropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.classificationLocalityValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.nameplateValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.plotDemarcatedValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model
                                              .propertyIdentifiedDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.typeOfPropertyValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.permittedUsePropertyValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.typeOfStructureValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.constructionStatusValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.roofTerraceValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.wallsDropdownValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.doorsWindowsDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.floorTypeValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model
                                              .interiorConstructionQualityValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model
                                              .exteriorConstructionQualityValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.valuationTypeValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.carpetAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.balconyAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.superAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.plotAreaDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.rentalDropdownValue == null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.marketMinimumDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.marketMaximumDropdownValue ==
                                          null) {
                                        _model.validateFormFields = false;
                                      }
                                      if (_model.validateFormFields!) {
                                        FFAppState().updateCaseDetailsAtIndex(
                                          functions.getDraftCaseIndexInList(
                                              FFAppState().caseDetails.toList(),
                                              widget.reportDetails)!,
                                          (e) => e
                                            ..updateInspectionFormData(
                                              (e) => e
                                                ..personMet = _model
                                                    .personMetAndContactTextController
                                                    .text
                                                ..propertyLocatedIn = _model
                                                    .propertylocationdropdownValue
                                                ..address1 = _model
                                                    .addressline1TextController
                                                    .text
                                                ..address2 = _model
                                                    .addressline2TextController
                                                    .text
                                                ..state =
                                                    _model.statedropdownValue
                                                ..city =
                                                    widget.reportDetails?.city
                                                ..locality = _model
                                                    .localityTextController.text
                                                ..pin = _model
                                                    .pincodeTextController.text
                                                ..relationWithOwner = _model
                                                    .relationWithOwnerTextController
                                                    .text
                                                ..roadWidth = _model
                                                    .roadWidthTextController
                                                    .text
                                                ..landMark = _model
                                                    .landmarkTextController.text
                                                ..classificationOfLocality = _model
                                                    .classificationLocalityValue
                                                ..namePlateFixed =
                                                    _model.nameplateValue
                                                ..propertyDemarcated =
                                                    _model.plotDemarcatedValue
                                                ..propertyIdentified = functions
                                                    .createCommaSeparatedStringFromList(
                                                        _model
                                                            .propertyIdentifiedDropdownValue!
                                                            .toList())
                                                ..cityCenter = _model
                                                    .distanceFromCityTextController
                                                    .text
                                                ..railwayStation = _model
                                                    .distanceFromStationTextController
                                                    .text
                                                ..busStop = _model
                                                    .distanceFromBusTextController
                                                    .text
                                                ..hospital = _model
                                                    .distanceFromHospitalTextController
                                                    .text
                                                ..permittedUseOfProperty = _model
                                                    .permittedUsePropertyValue
                                                ..propertyType =
                                                    _model.typeOfPropertyValue
                                                ..north = _model
                                                    .northTextController.text
                                                ..east = _model
                                                    .eastTextController.text
                                                ..south = _model
                                                    .southTextController.text
                                                ..west = _model
                                                    .westTextController.text
                                                ..noOfFloors = _model
                                                    .totalFloorsTextController
                                                    .text
                                                ..noOfLifts = _model
                                                    .noofliftsTextController
                                                    .text
                                                ..floorLocation = _model
                                                    .floorLocationTextController
                                                    .text
                                                ..structureType =
                                                    _model.typeOfStructureValue
                                                ..ageBuilding = _model
                                                    .buildingAgeTextController
                                                    .text
                                                ..constructionStatus = _model
                                                    .constructionStatusValue
                                                ..completionState = _model
                                                    .completionStageTextController
                                                    .text
                                                ..roof = _model.roofTerraceValue
                                                ..unitsPerFloor = _model
                                                    .totalUnitsTextController
                                                    .text
                                                ..wallPlasterPainting = functions
                                                    .convertListDropdownsToHashSeparateStringForDraftReport(
                                                        _model
                                                            .wallsDropdownValue
                                                            ?.toList())
                                                ..doorsWindows = functions
                                                    .convertListDropdownsToHashSeparateStringForDraftReport(
                                                        _model
                                                            .doorsWindowsDropdownValue
                                                            ?.toList())
                                                ..flooringType = functions
                                                    .convertListDropdownsToHashSeparateStringForDraftReport(
                                                        _model.floorTypeValue
                                                            ?.toList())
                                                ..interiorConstructionQuality =
                                                    _model
                                                        .interiorConstructionQualityValue
                                                ..exteriorConstructionQuality =
                                                    _model
                                                        .exteriorConstructionQualityValue
                                                ..valuationType =
                                                    _model.valuationTypeValue
                                                ..carpet =
                                                    '${_model.carpetAreaTextController.text}##${_model.carpetAreaDropdownValue}'
                                                ..balcony =
                                                    '${_model.balconyAreaTextController.text}##${_model.balconyAreaDropdownValue}'
                                                ..salableArea =
                                                    '${_model.superAreaTextController.text}##${_model.superAreaDropdownValue}'
                                                ..plotLength = _model
                                                    .plotLengthTextController
                                                    .text
                                                ..plotWidth = _model
                                                    .plotWidthTextController
                                                    .text
                                                ..plotArea =
                                                    '${_model.plotAreaTextController.text}##${_model.plotAreaDropdownValue}'
                                                ..rentalValue =
                                                    '${_model.rentalValueTextController.text}##${_model.rentalDropdownValue}'
                                                ..minimumMarketRates =
                                                    '${_model.marketRatesMinimumTextController.text}##${_model.marketMinimumDropdownValue}'
                                                ..maximumMarketRates =
                                                    '${_model.marketMaximumDropdownValue}##${_model.marketMaximumDropdownValue}'
                                                ..dealerName = _model
                                                    .dealerNameTextController
                                                    .text
                                                ..dealerMobileNumber = _model
                                                    .dealerContactTextController
                                                    .text
                                                ..otherStructureType = _model
                                                    .otherStructureTypeTextController
                                                    .text
                                                ..otherPropertyLocatedIn = _model
                                                    .otherPropertyLocatedTextController
                                                    .text
                                                ..otherPermittedUseOfProperty =
                                                    _model
                                                        .otherPermittedPropertyTextController
                                                        .text
                                                ..otherConstructionStatus = _model
                                                    .otherConstructionStatusTextController
                                                    .text
                                                ..otherRoof = _model
                                                    .otherRoofTextController
                                                    .text
                                                ..reasonPortionNotSeen = _model
                                                    .remarkNo1TextController
                                                    .text
                                                ..anyOtherInformation = functions
                                                    .convertAdditionalRemarkToDataType(
                                                        _model
                                                            .aadditionalRemark1TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark2TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark3TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark4TextController
                                                            .text,
                                                        _model
                                                            .aadditionalRemark5TextController
                                                            .text,
                                                        _model
                                                            .additionalRemarkNumber!)!
                                                    .toList()
                                                ..floorwiseDetails = functions
                                                    .convertFloorDetailsToDataType(
                                                        _model
                                                            .nameOfFloor1TextController
                                                            .text,
                                                        _model
                                                            .usage1TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy1TextController
                                                            .text,
                                                        _model
                                                            .accommodation1TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured1TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor2TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor3TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor4TextController
                                                            .text,
                                                        _model
                                                            .nameOfFloor5TextController
                                                            .text,
                                                        _model
                                                            .usage2TextController
                                                            .text,
                                                        _model
                                                            .usage3TextController
                                                            .text,
                                                        _model
                                                            .usage4TextController
                                                            .text,
                                                        _model
                                                            .usage5TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy2TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy3TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy4TextController
                                                            .text,
                                                        _model
                                                            .occupiedBy5TextController
                                                            .text,
                                                        _model
                                                            .accommodation2TextController
                                                            .text,
                                                        _model
                                                            .accommodation3TextController
                                                            .text,
                                                        _model
                                                            .accommodation4TextController
                                                            .text,
                                                        _model
                                                            .accommodation5TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured2TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured3TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured4TextController
                                                            .text,
                                                        _model
                                                            .actualAreaMeasured5TextController
                                                            .text,
                                                        _model
                                                            .additionalFloorNumber)
                                                    .toList(),
                                            ),
                                        );
                                        FFAppState().update(() {});
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Report Saved Successfully.',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 3000),
                                            backgroundColor: Color(0xFFFF8C25),
                                          ),
                                        );
                                        context.safePop();
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                          'case_details_screen',
                                          queryParameters: {
                                            'selectedCaseDetails':
                                                serializeParam(
                                              FFAppState().caseDetails[functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.reportDetails)!],
                                              ParamType.DataStruct,
                                            ),
                                            'currentCaseIndex': serializeParam(
                                              widget.caseIndexInList,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Please fill the report form fields',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 2500),
                                            backgroundColor: Color(0xFFFF0000),
                                          ),
                                        );
                                      }
                                    }

                                    setState(() {});
                                  },
                                  text: 'SAVE ',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFFF8C25),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 10.0))
                        .addToStart(const SizedBox(height: 10.0))
                        .addToEnd(const SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
