import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/single_case_action_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'case_actions_screen_model.dart';
export 'case_actions_screen_model.dart';

class CaseActionsScreenWidget extends StatefulWidget {
  const CaseActionsScreenWidget({
    super.key,
    required this.caseDetailsForActionScreen,
  });

  final ResponseStruct? caseDetailsForActionScreen;

  @override
  State<CaseActionsScreenWidget> createState() =>
      _CaseActionsScreenWidgetState();
}

class _CaseActionsScreenWidgetState extends State<CaseActionsScreenWidget> {
  late CaseActionsScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaseActionsScreenModel());

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
                  widget.caseDetailsForActionScreen?.refNo,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FutureBuilder<ApiCallResponse>(
                  future: VdmsApiCallsGroup.getCaseHistoryAPICall.call(
                    userId:
                        functions.convertStringtoInteger(FFAppState().userId),
                    caseId: functions.convertStringtoInteger(
                        widget.caseDetailsForActionScreen!.id),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return const Center(
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xFF0F61AB),
                            ),
                          ),
                        ),
                      );
                    }
                    final containerGetCaseHistoryAPIResponse = snapshot.data!;

                    return Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) {
                          final eachCaseHistory = getJsonField(
                            containerGetCaseHistoryAPIResponse.jsonBody,
                            r'''$.response''',
                          ).toList();

                          return ListView.builder(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              10.0,
                              0,
                              20.0,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: eachCaseHistory.length,
                            itemBuilder: (context, eachCaseHistoryIndex) {
                              final eachCaseHistoryItem =
                                  eachCaseHistory[eachCaseHistoryIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: SingleCaseActionWidgetWidget(
                                    key: Key(
                                        'Keyjt2_${eachCaseHistoryIndex}_of_${eachCaseHistory.length}'),
                                    statusName: getJsonField(
                                      eachCaseHistoryItem,
                                      r'''$.statusName''',
                                    ).toString(),
                                    username: getJsonField(
                                      eachCaseHistoryItem,
                                      r'''$.username''',
                                    ).toString(),
                                    comment: getJsonField(
                                      eachCaseHistoryItem,
                                      r'''$.comment''',
                                    ).toString(),
                                    dateAdded: getJsonField(
                                      eachCaseHistoryItem,
                                      r'''$.dateAdded''',
                                    ).toString(),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
