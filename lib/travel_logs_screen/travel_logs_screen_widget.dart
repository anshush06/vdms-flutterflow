import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/travel_log_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'travel_logs_screen_model.dart';
export 'travel_logs_screen_model.dart';

class TravelLogsScreenWidget extends StatefulWidget {
  const TravelLogsScreenWidget({super.key});

  @override
  State<TravelLogsScreenWidget> createState() => _TravelLogsScreenWidgetState();
}

class _TravelLogsScreenWidgetState extends State<TravelLogsScreenWidget> {
  late TravelLogsScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TravelLogsScreenModel());

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
                'Travel Log',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: const Color(0xFFF3F6F8),
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FutureBuilder<ApiCallResponse>(
                  future: VdmsApiCallsGroup.getFieldEngineerTravelLogsCall.call(
                    fieldEngineerId:
                        functions.convertStringtoInteger(FFAppState().userId),
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
                    final containerGetFieldEngineerTravelLogsResponse =
                        snapshot.data!;

                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Builder(
                        builder: (context) {
                          final eachTravelLog = TravelLogStruct.maybeFromMap(
                                      containerGetFieldEngineerTravelLogsResponse
                                          .jsonBody)
                                  ?.response
                                  .toList() ??
                              [];

                          return ListView.separated(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              15.0,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: eachTravelLog.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                            itemBuilder: (context, eachTravelLogIndex) {
                              final eachTravelLogItem =
                                  eachTravelLog[eachTravelLogIndex];
                              return TravelLogWidgetWidget(
                                key: Key(
                                    'Keym36_${eachTravelLogIndex}_of_${eachTravelLog.length}'),
                                travelLogDetails: eachTravelLogItem,
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
