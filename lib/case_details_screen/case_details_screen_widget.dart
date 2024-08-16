import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/documentation_widget_widget.dart';
import '/components/remark_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/case_card_widget/case_card_widget_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'case_details_screen_model.dart';
export 'case_details_screen_model.dart';

class CaseDetailsScreenWidget extends StatefulWidget {
  const CaseDetailsScreenWidget({
    super.key,
    required this.selectedCaseDetails,
    required this.currentCaseIndex,
  });

  final ResponseStruct? selectedCaseDetails;
  final int? currentCaseIndex;

  @override
  State<CaseDetailsScreenWidget> createState() =>
      _CaseDetailsScreenWidgetState();
}

class _CaseDetailsScreenWidgetState extends State<CaseDetailsScreenWidget> {
  late CaseDetailsScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaseDetailsScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Case Detail',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: const Color(0xFFF3F6F8),
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.selectedCaseDetails?.refNo,
                  '-',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).secondary,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).secondary,
              icon: const Icon(
                Icons.remove_red_eye,
                color: Colors.white,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'case_actions_screen',
                  queryParameters: {
                    'caseDetailsForActionScreen': serializeParam(
                      widget.selectedCaseDetails,
                      ParamType.DataStruct,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).secondary,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).secondary,
              icon: const Icon(
                Icons.notification_add_outlined,
                color: Colors.white,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'notification_screen',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                    ),
                  },
                );
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.caseCardWidgetModel,
                            updateCallback: () => setState(() {}),
                            updateOnChange: true,
                            child: CaseCardWidgetWidget(
                              case1: widget.selectedCaseDetails!,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.remarkWidgetModel,
                            updateCallback: () => setState(() {}),
                            updateOnChange: true,
                            child: RemarkWidgetWidget(
                              caseIdForRemark: functions.convertStringtoInteger(
                                  widget.selectedCaseDetails!.id),
                              caseIndexForRemark: widget.currentCaseIndex!,
                              caseStatus: widget.selectedCaseDetails!.statusId,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.documentationWidgetModel,
                            updateCallback: () => setState(() {}),
                            child: DocumentationWidgetWidget(
                              caseDetailsForDocumentation:
                                  widget.selectedCaseDetails!,
                              caseIndex: widget.currentCaseIndex!,
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ),
              if ((functions.filterImagesByCaseIDAndImageType(
                              FFAppState().sitePictures.toList(),
                              widget.selectedCaseDetails!.id,
                              'selfie') ==
                          true) &&
                      ((widget.selectedCaseDetails?.latitude !=
                              'fetching...') &&
                          (widget.selectedCaseDetails?.longitude !=
                              'fetching...') &&
                          (widget.selectedCaseDetails?.longitude != '0') &&
                          (widget.selectedCaseDetails?.latitude != '0') &&
                          (widget.selectedCaseDetails?.longitude != null &&
                              widget.selectedCaseDetails?.longitude != '') &&
                          (widget.selectedCaseDetails?.latitude != null &&
                              widget.selectedCaseDetails?.latitude != ''))
                  ? true
                  : false)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (!((widget.selectedCaseDetails?.statusId == '2') ||
                          (widget.selectedCaseDetails?.statusId == '3')))
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().updateCaseDetailsAtIndex(
                                  functions.getDraftCaseIndexInList(
                                      FFAppState().caseDetails.toList(),
                                      widget.selectedCaseDetails)!,
                                  (e) => e
                                    ..statusId = '4'
                                    ..statusName = 'Draft Report',
                                );
                                setState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Draft Added Successfully.',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 2000),
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
                                    'tabIndex': serializeParam(
                                      1,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              text: 'SAVE DRAFT',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF0F61AB),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Color(0xFF0F61AB),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      if (!((widget.selectedCaseDetails?.statusId == '2') ||
                          (widget.selectedCaseDetails?.statusId == '3')))
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: ((widget
                                              .selectedCaseDetails?.statusId ==
                                          '2') ||
                                      (widget.selectedCaseDetails?.statusId ==
                                          '3'))
                                  ? null
                                  : () async {
                                      if (functions.checkEmptyFields(
                                          widget.selectedCaseDetails!)) {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title:
                                                          const Text('Confirmation'),
                                                      content: const Text(
                                                          'Are you want to submit the form ?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: const Text('Cancel'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              const Text('Confirm'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          ScaffoldMessenger.of(context)
                                              .clearSnackBars();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'Uploading Images....',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 10000),
                                              backgroundColor:
                                                  Color(0xFFFF8C25),
                                            ),
                                          );
                                          _model.submitSurveyAPIResponse1 =
                                              await actions
                                                  .submitSurveyDocuments(
                                            widget.selectedCaseDetails!.id,
                                            FFAppState().userId,
                                            functions
                                                .filterImagesByCaseID(
                                                    FFAppState()
                                                        .sitePictures
                                                        .toList(),
                                                    widget.selectedCaseDetails!
                                                        .id)!
                                                .toList(),
                                          );
                                          if (_model.submitSurveyAPIResponse1 ==
                                              true) {
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Images Uploaded Successfully',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    Color(0xFFFF8C25),
                                              ),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Saving Location...',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    Color(0xFFFF8C25),
                                              ),
                                            );
                                            _model.saveLocationAPIResponse =
                                                await VdmsApiCallsGroup
                                                    .saveSurveyLocationAPICall
                                                    .call(
                                              longitude: widget
                                                  .selectedCaseDetails
                                                  ?.longitude,
                                              latitude: widget
                                                  .selectedCaseDetails
                                                  ?.latitude,
                                              caseId: widget
                                                  .selectedCaseDetails?.id,
                                              userId: FFAppState().userId,
                                            );

                                            if (getJsonField(
                                                  (_model.saveLocationAPIResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.error.message''',
                                                ) ==
                                                null) {
                                              ScaffoldMessenger.of(context)
                                                  .clearSnackBars();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    getJsonField(
                                                      (_model.saveLocationAPIResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.response.message''',
                                                    ).toString(),
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 2000),
                                                  backgroundColor:
                                                      const Color(0xFFFF8C25),
                                                ),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .clearSnackBars();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                    'Saving Report Form...',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 10000),
                                                  backgroundColor:
                                                      Color(0xFFFF8C25),
                                                ),
                                              );
                                              _model.submitSurveyAPIResponse =
                                                  await VdmsApiCallsGroup
                                                      .submitSurveyAPICall
                                                      .call(
                                                userId: functions
                                                    .convertStringtoInteger(
                                                        FFAppState().userId),
                                                caseId: functions
                                                    .convertStringtoInteger(
                                                        widget
                                                            .selectedCaseDetails!
                                                            .id),
                                                timestamp: functions
                                                    .getCurrentTimeStamp(),
                                                inspectionFormData: functions.convertDataToJson(
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .refNo,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .bank,
                                                    FFAppState().username,
                                                    functions
                                                        .getCurrentTimeStamp(),
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .applicantName,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .address1,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .state,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .locality,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .pin,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .propertyLocatedIn,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .classificationOfLocality,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .namePlateFixed,
                                                    widget
                                                        .selectedCaseDetails
                                                        ?.inspectionFormData
                                                        .propertyDemarcated,
                                                    widget.selectedCaseDetails?.inspectionFormData.propertyType,
                                                    widget.selectedCaseDetails?.inspectionFormData.permittedUseOfProperty,
                                                    widget.selectedCaseDetails?.inspectionFormData.structureType,
                                                    widget.selectedCaseDetails?.inspectionFormData.constructionStatus,
                                                    widget.selectedCaseDetails?.inspectionFormData.roof,
                                                    widget.selectedCaseDetails?.inspectionFormData.interiorConstructionQuality,
                                                    widget.selectedCaseDetails?.inspectionFormData.exteriorConstructionQuality,
                                                    widget.selectedCaseDetails?.inspectionFormData.valuationType,
                                                    widget.selectedCaseDetails?.inspectionFormData.carpet,
                                                    widget.selectedCaseDetails?.inspectionFormData.balcony,
                                                    widget.selectedCaseDetails?.inspectionFormData.salableArea,
                                                    widget.selectedCaseDetails?.inspectionFormData.plotArea,
                                                    widget.selectedCaseDetails?.inspectionFormData.rentalValue,
                                                    widget.selectedCaseDetails?.inspectionFormData.minimumMarketRates,
                                                    widget.selectedCaseDetails?.inspectionFormData.maximumMarketRates,
                                                    widget.selectedCaseDetails?.inspectionFormData.city,
                                                    widget.selectedCaseDetails?.inspectionFormData.address2,
                                                    widget.selectedCaseDetails?.inspectionFormData.personMet,
                                                    widget.selectedCaseDetails?.inspectionFormData.relationWithOwner,
                                                    widget.selectedCaseDetails?.inspectionFormData.landMark,
                                                    widget.selectedCaseDetails?.inspectionFormData.roadWidth,
                                                    widget.selectedCaseDetails?.inspectionFormData.propertyIdentified,
                                                    widget.selectedCaseDetails?.inspectionFormData.cityCenter,
                                                    widget.selectedCaseDetails?.inspectionFormData.railwayStation,
                                                    widget.selectedCaseDetails?.inspectionFormData.busStop,
                                                    widget.selectedCaseDetails?.inspectionFormData.hospital,
                                                    widget.selectedCaseDetails?.inspectionFormData.north,
                                                    widget.selectedCaseDetails?.inspectionFormData.south,
                                                    widget.selectedCaseDetails?.inspectionFormData.east,
                                                    widget.selectedCaseDetails?.inspectionFormData.west,
                                                    widget.selectedCaseDetails?.inspectionFormData.otherPermittedUseOfProperty,
                                                    widget.selectedCaseDetails?.inspectionFormData.noOfFloors,
                                                    widget.selectedCaseDetails?.inspectionFormData.unitsPerFloor,
                                                    widget.selectedCaseDetails?.inspectionFormData.noOfLifts,
                                                    widget.selectedCaseDetails?.inspectionFormData.floorLocation,
                                                    widget.selectedCaseDetails?.inspectionFormData.ageBuilding,
                                                    widget.selectedCaseDetails?.inspectionFormData.completionState,
                                                    widget.selectedCaseDetails?.inspectionFormData.otherRoof,
                                                    widget.selectedCaseDetails?.inspectionFormData.wallPlasterPainting,
                                                    widget.selectedCaseDetails?.inspectionFormData.doorsWindows,
                                                    widget.selectedCaseDetails?.inspectionFormData.flooringType,
                                                    widget.selectedCaseDetails?.inspectionFormData.plotLength,
                                                    widget.selectedCaseDetails?.inspectionFormData.plotWidth,
                                                    widget.selectedCaseDetails?.inspectionFormData.reasonPortionNotSeen,
                                                    functions.convertAdditionalRemarksToList(widget.selectedCaseDetails?.inspectionFormData.anyOtherInformation.toList()).toList(),
                                                    functions.convertFloorDetailsToList(widget.selectedCaseDetails?.inspectionFormData.floorwiseDetails.toList()).toList()),
                                              );

                                              if ((_model
                                                      .submitSurveyAPIResponse
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState()
                                                    .removeAtIndexFromCaseDetails(
                                                        widget
                                                            .currentCaseIndex!);
                                                FFAppState().update(() {});
                                                _model.deleteSitePicturesResponse =
                                                    actions
                                                        .deleteSitePicturesOfCase(
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget
                                                      .selectedCaseDetails!.id,
                                                );
                                                if (_model
                                                        .deleteSitePicturesResponse ==
                                                    true) {
                                                  ScaffoldMessenger.of(context)
                                                      .clearSnackBars();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                      content: Text(
                                                        'Report Submit Successfully',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 3000),
                                                      backgroundColor:
                                                          Color(0xFFFF8C25),
                                                    ),
                                                  );
                                                  Navigator.pop(context);
                                                  if (Navigator.of(context)
                                                      .canPop()) {
                                                    context.pop();
                                                  }
                                                  context.pushNamed(
                                                    'main_case_listing_screen',
                                                    queryParameters: {
                                                      'notificationCount':
                                                          serializeParam(
                                                        0,
                                                        ParamType.int,
                                                      ),
                                                      'tabIndex':
                                                          serializeParam(
                                                        2,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                      content: Text(
                                                        'Something went wrong in deleting site pictures.',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          Color(0xFFC62626),
                                                    ),
                                                  );
                                                }
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                      'Something went wrong. Try again!',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        Color(0xFFFF0000),
                                                  ),
                                                );
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    getJsonField(
                                                      (_model.saveLocationAPIResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.response.message''',
                                                    ).toString(),
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      const Color(0xFFD2393C),
                                                ),
                                              );
                                            }
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Not Uploaded. Something went wrong!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          }
                                        }
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

                                        context.pushNamed(
                                          'report_screen',
                                          queryParameters: {
                                            'caseDetailsForReport':
                                                serializeParam(
                                              widget.selectedCaseDetails,
                                              ParamType.DataStruct,
                                            ),
                                            'caseIndex': serializeParam(
                                              widget.currentCaseIndex,
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
                                      }

                                      setState(() {});
                                    },
                              text: 'SUBMIT',
                              options: FFButtonOptions(
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
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              showLoadingIndicator: false,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
            ]
                .divide(const SizedBox(height: 10.0))
                .addToStart(const SizedBox(height: 10.0))
                .addToEnd(const SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
