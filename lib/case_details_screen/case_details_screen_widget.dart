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
    required this.inspectionform,
  });

  final ResponseStruct? selectedCaseDetails;
  final int? currentCaseIndex;
  final InspectionFormDataStruct? inspectionform;

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF0F61AB),
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
              borderColor: const Color(0xFF0F61AB),
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0xFF0F61AB),
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
              borderColor: const Color(0xFF0F61AB),
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0xFF0F61AB),
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
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  wrapWithModel(
                    model: _model.caseCardWidgetModel,
                    updateCallback: () => setState(() {}),
                    updateOnChange: true,
                    child: CaseCardWidgetWidget(
                      case1: widget.selectedCaseDetails!,
                    ),
                  ),
                  wrapWithModel(
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
                  wrapWithModel(
                    model: _model.documentationWidgetModel,
                    updateCallback: () => setState(() {}),
                    child: DocumentationWidgetWidget(
                      caseDetailsForDocumentation: widget.selectedCaseDetails!,
                      caseIndex: widget.currentCaseIndex!,
                    ),
                  ),
                  if (!((widget.selectedCaseDetails?.statusId == '2') ||
                      (widget.selectedCaseDetails?.statusId == '3')))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: ((widget.selectedCaseDetails?.statusId ==
                                    '2') ||
                                (widget.selectedCaseDetails?.statusId == '3'))
                            ? null
                            : () async {
                                if (widget.selectedCaseDetails?.statusId ==
                                    '1') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Please fill the report form fields',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 2500),
                                      backgroundColor: Color(0xFFFF0000),
                                    ),
                                  );

                                  context.pushNamed(
                                    'report_screen',
                                    queryParameters: {
                                      'caseDetailsForReport': serializeParam(
                                        widget.selectedCaseDetails,
                                        ParamType.DataStruct,
                                      ),
                                      'caseIndex': serializeParam(
                                        widget.currentCaseIndex,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  if (functions.checkEmptyFields(
                                      FFAppState().submitCaseDetails)) {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Confirmation'),
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
                                                      child: const Text('Confirm'),
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
                                          backgroundColor: Color(0xFFFF8C25),
                                        ),
                                      );
                                      _model.submitSurveyAPIResponse1 =
                                          await actions.submitSurveyDocuments(
                                        widget.selectedCaseDetails!.id,
                                        FFAppState().userId,
                                        FFAppState().sitePictures.toList(),
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
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor: Color(0xFFFF8C25),
                                          ),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              widget.selectedCaseDetails!
                                                  .inspectionFormData.personMet,
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
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
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 10000),
                                            backgroundColor: Color(0xFFFF8C25),
                                          ),
                                        );
                                        _model.submitSurveyAPIResponse =
                                            await VdmsApiCallsGroup
                                                .submitSurveyAPICall
                                                .call(
                                          userId:
                                              functions.convertStringtoInteger(
                                                  FFAppState().userId),
                                          caseId: functions
                                              .convertStringtoInteger(widget
                                                  .selectedCaseDetails!.id),
                                          timestamp:
                                              functions.getCurrentTimeStamp(),
                                          inspectionFormData: functions.convertDataToJson(
                                              widget.selectedCaseDetails
                                                  ?.inspectionFormData.refNo,
                                              widget.selectedCaseDetails
                                                  ?.inspectionFormData.bank,
                                              FFAppState().username,
                                              functions.getCurrentTimeStamp(),
                                              widget
                                                  .selectedCaseDetails
                                                  ?.inspectionFormData
                                                  .applicantName,
                                              widget
                                                  .selectedCaseDetails
                                                  ?.inspectionFormData
                                                  .address1,
                                              widget.selectedCaseDetails
                                                  ?.inspectionFormData.state,
                                              widget
                                                  .selectedCaseDetails
                                                  ?.inspectionFormData
                                                  .locality,
                                              widget.selectedCaseDetails
                                                  ?.inspectionFormData.pin,
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
                                              FFAppState()
                                                  .submitCaseDetails
                                                  .inspectionFormData
                                                  .propertyDemarcated,
                                              FFAppState()
                                                  .submitCaseDetails
                                                  .inspectionFormData
                                                  .propertyType,
                                              FFAppState().submitCaseDetails.inspectionFormData.permittedUseOfProperty,
                                              FFAppState().submitCaseDetails.inspectionFormData.structureType,
                                              FFAppState().submitCaseDetails.inspectionFormData.constructionStatus,
                                              FFAppState().submitCaseDetails.inspectionFormData.roof,
                                              FFAppState().submitCaseDetails.inspectionFormData.interiorConstructionQuality,
                                              FFAppState().submitCaseDetails.inspectionFormData.exteriorConstructionQuality,
                                              FFAppState().submitCaseDetails.inspectionFormData.valuationType,
                                              FFAppState().submitCaseDetails.inspectionFormData.carpet,
                                              FFAppState().submitCaseDetails.inspectionFormData.balcony,
                                              FFAppState().submitCaseDetails.inspectionFormData.salableArea,
                                              FFAppState().submitCaseDetails.inspectionFormData.plotArea,
                                              FFAppState().submitCaseDetails.inspectionFormData.rentalValue,
                                              FFAppState().submitCaseDetails.inspectionFormData.minimumMarketRates,
                                              FFAppState().submitCaseDetails.inspectionFormData.maximumMarketRates,
                                              FFAppState().submitCaseDetails.inspectionFormData.city,
                                              FFAppState().submitCaseDetails.inspectionFormData.address2,
                                              widget.selectedCaseDetails?.inspectionFormData.personMet,
                                              widget.selectedCaseDetails?.inspectionFormData.relationWithOwner,
                                              widget.selectedCaseDetails?.inspectionFormData.landMark,
                                              widget.selectedCaseDetails?.inspectionFormData.roadWidth,
                                              widget.selectedCaseDetails?.inspectionFormData.propertyIdentified,
                                              FFAppState().submitCaseDetails.inspectionFormData.cityCenter,
                                              FFAppState().submitCaseDetails.inspectionFormData.railwayStation,
                                              FFAppState().submitCaseDetails.inspectionFormData.busStop,
                                              FFAppState().submitCaseDetails.inspectionFormData.hospital,
                                              FFAppState().submitCaseDetails.inspectionFormData.north,
                                              FFAppState().submitCaseDetails.inspectionFormData.south,
                                              FFAppState().submitCaseDetails.inspectionFormData.east,
                                              FFAppState().submitCaseDetails.inspectionFormData.west,
                                              FFAppState().submitCaseDetails.inspectionFormData.otherPermittedUseOfProperty,
                                              FFAppState().submitCaseDetails.inspectionFormData.noOfFloors,
                                              FFAppState().submitCaseDetails.inspectionFormData.unitsPerFloor,
                                              FFAppState().submitCaseDetails.inspectionFormData.noOfLifts,
                                              FFAppState().submitCaseDetails.inspectionFormData.floorLocation,
                                              FFAppState().submitCaseDetails.inspectionFormData.ageBuilding,
                                              FFAppState().submitCaseDetails.inspectionFormData.completionState,
                                              FFAppState().submitCaseDetails.inspectionFormData.otherRoof,
                                              FFAppState().submitCaseDetails.inspectionFormData.wallPlasterPainting,
                                              FFAppState().submitCaseDetails.inspectionFormData.doorsWindows,
                                              FFAppState().submitCaseDetails.inspectionFormData.flooringType,
                                              FFAppState().submitCaseDetails.inspectionFormData.plotLength,
                                              FFAppState().submitCaseDetails.inspectionFormData.plotWidth,
                                              FFAppState().submitCaseDetails.inspectionFormData.reasonPortionNotSeen,
                                              FFAppState().submitCaseDetails.inspectionFormData.anyOtherInformation.toList()),
                                        );

                                        if ((_model.submitSurveyAPIResponse
                                                ?.succeeded ??
                                            true)) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'Report Submit Successfully',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 3000),
                                              backgroundColor:
                                                  Color(0xFFFF8C25),
                                            ),
                                          );
                                          if (widget.selectedCaseDetails
                                                  ?.statusId ==
                                              '4') {
                                            FFAppState()
                                                .removeAtIndexFromCaseDetails(
                                                    widget.currentCaseIndex!);
                                            FFAppState().submitCaseDetails =
                                                ResponseStruct();
                                            FFAppState().update(() {});
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            context.safePop();
                                          } else {
                                            FFAppState().update(() {});
                                            context.safePop();
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
                                              duration:
                                                  Duration(milliseconds: 4000),
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
                                              'Not Uploaded. Something went wrong!',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Please fill the report form fields',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 2500),
                                        backgroundColor: Color(0xFFFF0000),
                                      ),
                                    );

                                    context.pushNamed(
                                      'report_screen',
                                      queryParameters: {
                                        'caseDetailsForReport': serializeParam(
                                          FFAppState().submitCaseDetails,
                                          ParamType.DataStruct,
                                        ),
                                        'caseIndex': serializeParam(
                                          widget.currentCaseIndex,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
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
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                ]
                    .divide(const SizedBox(height: 15.0))
                    .addToEnd(const SizedBox(height: 10.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
