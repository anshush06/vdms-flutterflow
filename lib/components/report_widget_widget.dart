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
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
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
    _model.nameOfFloorTextController ??= TextEditingController();
    _model.nameOfFloorFocusNode ??= FocusNode();

    _model.occupiedByTextController ??= TextEditingController();
    _model.occupiedByFocusNode ??= FocusNode();

    _model.usageTextController ??= TextEditingController();
    _model.usageFocusNode ??= FocusNode();

    _model.accommodationTextController ??= TextEditingController();
    _model.accommodationFocusNode ??= FocusNode();

    _model.actualAreaMeasuredTextController ??= TextEditingController();
    _model.actualAreaMeasuredFocusNode ??= FocusNode();

    _model.expandableExpandableController6 =
        ExpandableController(initialExpanded: false);
    _model.completionStageTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.completionState);
    _model.completionStageFocusNode ??= FocusNode();

    _model.expandableExpandableController7 =
        ExpandableController(initialExpanded: false);
    _model.carpetAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.carpet);
    _model.carpetAreaFocusNode ??= FocusNode();

    _model.balconyAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.balcony);
    _model.balconyAreaFocusNode ??= FocusNode();

    _model.superAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.salableArea);
    _model.superAreaFocusNode ??= FocusNode();

    _model.plotLengthTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.plotLength);
    _model.plotLengthFocusNode ??= FocusNode();

    _model.plotWidthTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.plotWidth);
    _model.plotWidthFocusNode ??= FocusNode();

    _model.plotAreaTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.plotArea);
    _model.plotAreaFocusNode ??= FocusNode();

    _model.rentalValueTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.rentalValue);
    _model.rentalValueFocusNode ??= FocusNode();

    _model.marketRatesMinimumTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.minimumMarketRates);
    _model.marketRatesMinimumFocusNode ??= FocusNode();

    _model.marketRatesMaximumTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.maximumMarketRates);
    _model.marketRatesMaximumFocusNode ??= FocusNode();

    _model.dealerNameTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.dealerName);
    _model.dealerNameFocusNode ??= FocusNode();

    _model.dealerContactTextController ??= TextEditingController(
        text: widget.reportDetails?.inspectionFormData.dealerMobileNumber);
    _model.dealerContactFocusNode ??= FocusNode();

    _model.expandableExpandableController8 =
        ExpandableController(initialExpanded: false);
    _model.remarkNo1TextController ??=
        TextEditingController(text: widget.reportDetails?.remark);
    _model.remarkNo1FocusNode ??= FocusNode();

    _model.aadditionalRemarkTextController ??= TextEditingController();
    _model.aadditionalRemarkFocusNode ??= FocusNode();

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
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.white,
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
                                                color: const Color(0xFF0F61AB),
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      collapsed: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
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
                                                  controller: _model
                                                      .refNoTextController,
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
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
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
                                                        const Color(0xFFF5F5F5),
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                  focusNode:
                                                      _model.dateFocusNode,
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                    hintText: 'Address1',
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                      .addressline1TextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                'Property Address Line 2 (As per Site Visit)*',
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
                                                    hintText: 'Address2',
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                      options: List<
                                                              String>.from(
                                                          (getJsonField(
                                                        statedropdownGetAreasAPIResponse
                                                            .jsonBody,
                                                        r'''$.response.states[:].value''',
                                                        true,
                                                      ) as List)
                                                              .map<String>((s) =>
                                                                  s.toString())
                                                              .toList()),
                                                      optionLabels:
                                                          (getJsonField(
                                                        statedropdownGetAreasAPIResponse
                                                            .jsonBody,
                                                        r'''$.response.states[:].state_name''',
                                                        true,
                                                      ) as List)
                                                              .map<String>((s) =>
                                                                  s.toString())
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .statedropdownValue =
                                                              val),
                                                      width: 326.0,
                                                      height: 56.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                letterSpacing:
                                                                    0.0,
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
                                                          const Color(0xFFF5F5F5),
                                                      elevation: 2.0,
                                                      borderColor:
                                                          const Color(0xFFF5F5F5),
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
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
                                                    hintText: 'Locality',
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                    hintText: 'Pincode',
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                        'Person met and contact',
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                        'Relation with owner',
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
                                                        color:
                                                            Color(0xFFF5F5F5),
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
                                                        const Color(0xFFF5F5F5),
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
                                                      FormFieldController<
                                                          String>(
                                                    _model.propertylocationdropdownValue ??=
                                                        valueOrDefault<String>(
                                                      widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .propertyLocatedIn,
                                                      '1',
                                                    ),
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
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .propertylocationdropdownValue =
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
                                                  hintText: 'Please select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor: const Color(0xFFF5F5F5),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0xFFF5F5F5),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
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
                                            ].divide(const SizedBox(height: 5.0)),
                                          ),
                                        ),
                                      ),
                                      theme: const ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: true,
                                        tapBodyToCollapse: true,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .bottom,
                                        hasIcon: true,
                                        iconPadding: EdgeInsets.fromLTRB(
                                            0.0, 20.0, 20.0, 0.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
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
                                color: Colors.white,
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
                                              color: const Color(0xFF0F61AB),
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
                                                            const Color(0x8A000000),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                  _model.classificationLocalityValue ??=
                                                      valueOrDefault<String>(
                                                    widget
                                                        .reportDetails
                                                        ?.inspectionFormData
                                                        .classificationOfLocality,
                                                    '1',
                                                  ),
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                    controller: _model
                                                            .nameplateValueController ??=
                                                        FormFieldController<
                                                                String>(
                                                            widget
                                                                .reportDetails!
                                                                .inspectionFormData
                                                                .namePlateFixed),
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
                                                          .plotDemarcatedValueController ??=
                                                      FormFieldController<
                                                          String>(null),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
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
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: BorderRadius.only(
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
                                color: Colors.white,
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
                                              color: const Color(0xFF0F61AB),
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
                                                  _model.typeOfPropertyValue ??=
                                                      widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .propertyType,
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                  _model.permittedUsePropertyValue ??=
                                                      widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .permittedUseOfProperty,
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
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
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                            )
                          ],
                          borderRadius: BorderRadius.only(
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
                                color: Colors.white,
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
                                              color: const Color(0xFF0F61AB),
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
                                                  _model.typeOfStructureValue ??=
                                                      widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .structureType,
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
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
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: BorderRadius.only(
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
                                color: Colors.white,
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
                                              color: const Color(0xFF0F61AB),
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
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Name of Floor*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .nameOfFloorTextController,
                                                      focusNode: _model
                                                          .nameOfFloorFocusNode,
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                          .nameOfFloorTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Occupied By*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .occupiedByTextController,
                                                      focusNode: _model
                                                          .occupiedByFocusNode,
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                          .occupiedByTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Usage*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .usageTextController,
                                                      focusNode:
                                                          _model.usageFocusNode,
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                          .usageTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Accommodation',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .accommodationTextController,
                                                      focusNode: _model
                                                          .accommodationFocusNode,
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                          .accommodationTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Actual Area Measured*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .actualAreaMeasuredTextController,
                                                      focusNode: _model
                                                          .actualAreaMeasuredFocusNode,
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                          .actualAreaMeasuredTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 5.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
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
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: BorderRadius.only(
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
                                color: Colors.white,
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
                                              color: const Color(0xFF0F61AB),
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
                                                  _model.constructionStatusValue ??=
                                                      widget
                                                          .reportDetails
                                                          ?.inspectionFormData
                                                          .constructionStatus,
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                  _model.roofTerraceValue ??=
                                                      '1',
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
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
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: BorderRadius.only(
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
                                color: Colors.white,
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
                                              color: const Color(0xFF0F61AB),
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
                                                            const Color(0x8A000000),
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
                                                  _model.valuationTypeValue ??=
                                                      '1',
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
                                                fillColor: const Color(0xFFF5F5F5),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFF5F5F5),
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                      _model.carpetAreaDropdownValue ??=
                                                          '1',
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
                                                        const Color(0xFFF5F5F5),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF5F5F5),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId !=
                                                            '1') ||
                                                        (widget.reportDetails
                                                                ?.statusId !=
                                                            '4'),
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                      _model.balconyAreaDropdownValue ??=
                                                          '1',
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
                                                        const Color(0xFFF5F5F5),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF5F5F5),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId !=
                                                            '1') ||
                                                        (widget.reportDetails
                                                                ?.statusId !=
                                                            '4'),
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                      _model.superAreaDropdownValue ??=
                                                          '1',
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
                                                        const Color(0xFFF5F5F5),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF5F5F5),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId !=
                                                            '1') ||
                                                        (widget.reportDetails
                                                                ?.statusId !=
                                                            '4'),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                      _model.plotAreaDropdownValue ??=
                                                          '1',
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
                                                        const Color(0xFFF5F5F5),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF5F5F5),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId !=
                                                            '1') ||
                                                        (widget.reportDetails
                                                                ?.statusId !=
                                                            '4'),
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                      _model.rentalDropdownValue ??=
                                                          '1',
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
                                                        const Color(0xFFF5F5F5),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF5F5F5),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId !=
                                                            '1') ||
                                                        (widget.reportDetails
                                                                ?.statusId !=
                                                            '4'),
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                      _model.marketMinimumDropdownValue ??=
                                                          '1',
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
                                                        const Color(0xFFF5F5F5),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF5F5F5),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId !=
                                                            '1') ||
                                                        (widget.reportDetails
                                                                ?.statusId !=
                                                            '4'),
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
                                                                .labelMedium
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
                                                                0xFFF5F5F5),
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
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
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            const Color(0xFFF5F5F5),
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
                                                      _model.marketMaximumDropdownValue ??=
                                                          '1',
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
                                                        const Color(0xFFF5F5F5),
                                                    elevation: 2.0,
                                                    borderColor:
                                                        const Color(0xFFF5F5F5),
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    disabled: (widget
                                                                .reportDetails
                                                                ?.statusId !=
                                                            '1') ||
                                                        (widget.reportDetails
                                                                ?.statusId !=
                                                            '4'),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
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
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                          borderRadius: BorderRadius.only(
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
                                color: Colors.white,
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
                                              color: const Color(0xFF0F61AB),
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
                                              'Remark No. 1*',
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
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                    .aadditionalRemarkTextController,
                                                focusNode: _model
                                                    .aadditionalRemarkFocusNode,
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
                                                  hintText: 'Additional Remark',
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
                                                      color: Color(0xFFF5F5F5),
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
                                                  fillColor: const Color(0xFFF5F5F5),
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
                                                    .aadditionalRemarkTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    theme: const ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                      hasIcon: true,
                                      iconPadding: EdgeInsets.fromLTRB(
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
                                (widget.reportDetails?.statusId == '4'))
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (widget.reportDetails?.statusId ==
                                        '1') {
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
                                                  .roadWidthTextController.text
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
                                              ..east =
                                                  _model.eastTextController.text
                                              ..south = _model
                                                  .southTextController.text
                                              ..west =
                                                  _model.westTextController.text
                                              ..noOfFloors = _model
                                                  .totalFloorsTextController
                                                  .text
                                              ..noOfLifts = _model
                                                  .noofliftsTextController.text
                                              ..floorLocation = _model
                                                  .floorLocationTextController
                                                  .text
                                              ..structureType =
                                                  _model.typeOfStructureValue
                                              ..ageBuilding = _model
                                                  .buildingAgeTextController
                                                  .text
                                              ..constructionStatus =
                                                  _model.constructionStatusValue
                                              ..completionState = _model
                                                  .completionStageTextController
                                                  .text
                                              ..roof = _model.roofTerraceValue
                                              ..unitsPerFloor = _model
                                                  .totalUnitsTextController.text
                                              ..wallPlasterPainting = functions
                                                  .convertListDropdownsToHashSeparateStringForDraftReport(
                                                      _model.wallsDropdownValue
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
                                              ..interiorConstructionQuality = _model
                                                  .interiorConstructionQualityValue
                                              ..exteriorConstructionQuality = _model
                                                  .exteriorConstructionQualityValue
                                              ..valuationType =
                                                  _model.valuationTypeValue
                                              ..carpet = _model
                                                  .carpetAreaTextController.text
                                              ..balcony = _model
                                                  .balconyAreaTextController
                                                  .text
                                              ..salableArea = _model
                                                  .superAreaTextController.text
                                              ..plotLength = _model
                                                  .plotLengthTextController.text
                                              ..plotWidth = _model
                                                  .plotWidthTextController.text
                                              ..plotArea = _model
                                                  .plotAreaTextController.text
                                              ..rentalValue = _model
                                                  .rentalValueTextController
                                                  .text
                                              ..minimumMarketRates = _model
                                                  .marketRatesMinimumTextController
                                                  .text
                                              ..maximumMarketRates = _model
                                                  .marketRatesMaximumTextController
                                                  .text
                                              ..dealerName = _model
                                                  .dealerNameTextController.text
                                              ..dealerMobileNumber = _model
                                                  .dealerContactTextController
                                                  .text,
                                          )
                                          ..statusId = '4'
                                          ..statusName = 'Draft Report',
                                      );
                                      FFAppState().update(() {});
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            'Draft Added Successfully',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 3000),
                                          backgroundColor: Color(0xFFFF8C25),
                                        ),
                                      );

                                      context.pushNamed(
                                        'main_case_listing_screen',
                                        queryParameters: {
                                          'notificationCount': serializeParam(
                                            0,
                                            ParamType.int,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else {
                                      if (functions.getDraftCaseIndexInList(
                                              FFAppState().caseDetails.toList(),
                                              widget.reportDetails) !=
                                          -1) {
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
                                                ..carpet = _model
                                                    .carpetAreaTextController
                                                    .text
                                                ..balcony = _model
                                                    .balconyAreaTextController
                                                    .text
                                                ..salableArea = _model
                                                    .superAreaTextController
                                                    .text
                                                ..plotLength = _model
                                                    .plotLengthTextController
                                                    .text
                                                ..plotWidth = _model
                                                    .plotWidthTextController
                                                    .text
                                                ..plotArea = _model
                                                    .plotAreaTextController.text
                                                ..rentalValue = _model
                                                    .rentalValueTextController
                                                    .text
                                                ..minimumMarketRates = _model
                                                    .marketRatesMinimumTextController
                                                    .text
                                                ..maximumMarketRates = _model
                                                    .marketRatesMaximumTextController
                                                    .text
                                                ..dealerName = _model
                                                    .dealerNameTextController
                                                    .text
                                                ..dealerMobileNumber = _model
                                                    .dealerContactTextController
                                                    .text,
                                            ),
                                        );
                                        FFAppState().update(() {});
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Draft Updated Successfully',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 3000),
                                            backgroundColor: Color(0xFFFF8C25),
                                          ),
                                        );

                                        context.pushNamed(
                                          'main_case_listing_screen',
                                          queryParameters: {
                                            'notificationCount': serializeParam(
                                              0,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Something went wrong. Try Again!',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 3000),
                                            backgroundColor: Color(0xFFB42E30),
                                          ),
                                        );
                                      }
                                    }
                                  },
                                  text: 'SAVE DRAFT',
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
