import '/backend/schema/structs/index.dart';
import '/components/documentation_widget_widget.dart';
import '/components/remark_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/case_card_widget/case_card_widget_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                  child: FFButtonWidget(
                    onPressed:
                        ((widget.selectedCaseDetails?.statusId == '2') ||
                                (widget.selectedCaseDetails?.statusId == '3'))
                            ? null
                            : () {
                                print('Button pressed ...');
                              },
                    text: 'SUBMIT',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
