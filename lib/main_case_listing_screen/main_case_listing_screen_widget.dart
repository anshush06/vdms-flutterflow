import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/case_card_widget/case_card_widget_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_case_listing_screen_model.dart';
export 'main_case_listing_screen_model.dart';

class MainCaseListingScreenWidget extends StatefulWidget {
  const MainCaseListingScreenWidget({super.key});

  @override
  State<MainCaseListingScreenWidget> createState() =>
      _MainCaseListingScreenWidgetState();
}

class _MainCaseListingScreenWidgetState
    extends State<MainCaseListingScreenWidget> with TickerProviderStateMixin {
  late MainCaseListingScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainCaseListingScreenModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: Colors.white,
        drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.75,
          child: Drawer(
            elevation: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  decoration: const BoxDecoration(
                    color: Color(0xFF0F61AB),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/app_icon.png',
                              ).image,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'VDMS v2.8',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFAppState().username,
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                '-',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.logout_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().username = '';
                                    FFAppState().userId = '';
                                    FFAppState().password = '';
                                    setState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Logout Successfully',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 2000),
                                        backgroundColor: Color(0xFFFF8C25),
                                      ),
                                    );

                                    context.goNamed(
                                      'login_screen',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.leftToRight,
                                        ),
                                      },
                                    );
                                  },
                                  child: Text(
                                    'Log Out',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.share_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Share Log',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.info,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Version',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.white,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0x4CFFFFFF),
              icon: Icon(
                Icons.dehaze,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
          ),
          title: Text(
            'VDMS',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: const Color(0xFF0F61AB),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.white,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0x4CFFFFFF),
              icon: Icon(
                Icons.restart_alt,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                setState(() => _model.apiRequestCompleter = null);
                await _model.waitForApiRequestCompleted(maxWait: 30000);
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.white,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0x4CFFFFFF),
              icon: Icon(
                Icons.notification_add,
                color: FlutterFlowTheme.of(context).primaryText,
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
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF0F61AB),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        isScrollable: true,
                        labelColor: const Color(0xFFF1F4F6),
                        unselectedLabelColor: Colors.white,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Roboto',
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: Colors.white,
                        indicatorWeight: 3.0,
                        padding: const EdgeInsets.all(2.0),
                        tabs: const [
                          Tab(
                            text: 'NOT VISITED',
                          ),
                          Tab(
                            text: 'IN PROGRESS',
                          ),
                          Tab(
                            text: 'VISITED',
                          ),
                          Tab(
                            text: 'COMPLETED',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [
                            () async {},
                            () async {},
                            () async {
                              _model.apiResult17h =
                                  await VdmsApiCallsGroup.getCaseAPICall.call(
                                filters: '{\"caseStatus\":\"2\"}',
                                userId: functions.convertStringtoInteger(
                                    FFAppState().userId),
                              );

                              if ((_model.apiResult17h?.succeeded ?? true)) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'ok',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            () async {}
                          ][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          FutureBuilder<ApiCallResponse>(
                            future: (_model.apiRequestCompleter ??=
                                    Completer<ApiCallResponse>()
                                      ..complete(
                                          VdmsApiCallsGroup.getCaseAPICall.call(
                                        filters: '{\"caseStatus\":\"1\"}',
                                        userId:
                                            functions.convertStringtoInteger(
                                                FFAppState().userId),
                                      )))
                                .future,
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return const Center(
                                  child: SizedBox(
                                    width: 40.0,
                                    height: 40.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final containerGetCaseAPIResponse =
                                  snapshot.data!;

                              return Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final case1 =
                                        GetCasesApiStruct.maybeFromMap(
                                                    containerGetCaseAPIResponse
                                                        .jsonBody)
                                                ?.response
                                                .toList() ??
                                            [];

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: case1.length,
                                      itemBuilder: (context, case1Index) {
                                        final case1Item = case1[case1Index];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().caseDetails =
                                                GetCasesApiStruct.maybeFromMap(
                                                        containerGetCaseAPIResponse
                                                            .jsonBody)!
                                                    .response
                                                    .toList()
                                                    .cast<ResponseStruct>();
                                            setState(() {});

                                            context.pushNamed(
                                              'case_details_screen',
                                              queryParameters: {
                                                'selectedCaseDetails':
                                                    serializeParam(
                                                  case1Item,
                                                  ParamType.DataStruct,
                                                ),
                                                'currentCaseIndex':
                                                    serializeParam(
                                                  case1Index,
                                                  ParamType.int,
                                                ),
                                                'inspectionform':
                                                    serializeParam(
                                                  InspectionFormDataStruct(),
                                                  ParamType.DataStruct,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          },
                                          child: CaseCardWidgetWidget(
                                            key: Key(
                                                'Keysz7_${case1Index}_of_${case1.length}'),
                                            case1: case1Item,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                wrapWithModel(
                                  model: _model.caseCardWidgetModel2,
                                  updateCallback: () => setState(() {}),
                                  updateOnChange: true,
                                  child: CaseCardWidgetWidget(
                                    case1: ResponseStruct(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: VdmsApiCallsGroup.getCaseAPICall.call(
                              filters: '{\"caseStatus\":\"2\"}',
                              userId: functions
                                  .convertStringtoInteger(FFAppState().userId),
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
                                        Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final containerGetCaseAPIResponse =
                                  snapshot.data!;

                              return Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final case1 =
                                        GetCasesApiStruct.maybeFromMap(
                                                    containerGetCaseAPIResponse
                                                        .jsonBody)
                                                ?.response
                                                .toList() ??
                                            [];

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: case1.length,
                                      itemBuilder: (context, case1Index) {
                                        final case1Item = case1[case1Index];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'case_details_screen',
                                              queryParameters: {
                                                'selectedCaseDetails':
                                                    serializeParam(
                                                  case1Item,
                                                  ParamType.DataStruct,
                                                ),
                                                'currentCaseIndex':
                                                    serializeParam(
                                                  case1Index,
                                                  ParamType.int,
                                                ),
                                                'inspectionform':
                                                    serializeParam(
                                                  InspectionFormDataStruct(),
                                                  ParamType.DataStruct,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          },
                                          child: CaseCardWidgetWidget(
                                            key: Key(
                                                'Key1nr_${case1Index}_of_${case1.length}'),
                                            case1: case1Item,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: VdmsApiCallsGroup.getCaseAPICall.call(
                              filters: '{\"caseStatus\":\"3\"}',
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
                                        Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final containerGetCaseAPIResponse =
                                  snapshot.data!;

                              return Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final eachCase4 =
                                        GetCasesApiStruct.maybeFromMap(
                                                    containerGetCaseAPIResponse
                                                        .jsonBody)
                                                ?.response
                                                .toList() ??
                                            [];

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: eachCase4.length,
                                      itemBuilder: (context, eachCase4Index) {
                                        final eachCase4Item =
                                            eachCase4[eachCase4Index];
                                        return CaseCardWidgetWidget(
                                          key: Key(
                                              'Keyq8c_${eachCase4Index}_of_${eachCase4.length}'),
                                          case1: eachCase4Item,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}