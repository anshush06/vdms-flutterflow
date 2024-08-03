import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'splash_screen_model.dart';
export 'splash_screen_model.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  late SplashScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getAreasAPIResponse =
          await VdmsApiCallsGroup.getAreasAPICall.call();

      if (getJsonField(
            (_model.getAreasAPIResponse?.jsonBody ?? ''),
            r'''$.error['message']''',
          ) ==
          null) {
        if (FFAppState().userId != '') {
          _model.checkTravelStatusAPIResponse2 =
              await VdmsApiCallsGroup.checkFieldEngineerTravelStatusCall.call(
            fieldEngineerId:
                functions.convertStringtoInteger(FFAppState().userId),
          );

          FFAppState().travelStatus = TravelReadingStruct.maybeFromMap(
                  (_model.checkTravelStatusAPIResponse2?.jsonBody ?? ''))!
              .response
              .message;
          FFAppState().startReading = TravelReadingStruct.maybeFromMap(
                  (_model.checkTravelStatusAPIResponse2?.jsonBody ?? ''))!
              .response
              .startDayReading;
          setState(() {});
          _model.notificationCountAPIResponse =
              await VdmsApiCallsGroup.getNotificationsCountAPICall.call(
            userId: functions.convertStringtoInteger(FFAppState().userId),
          );

          if (TravelReadingStruct.maybeFromMap(
                      (_model.checkTravelStatusAPIResponse2?.jsonBody ?? ''))
                  ?.response
                  .message ==
              'End your previous day') {
            context.goNamed(
              'capture_reading_screen',
              queryParameters: {
                'enableDrawer': serializeParam(
                  TravelReadingStruct.maybeFromMap(
                          (_model.checkTravelStatusAPIResponse2?.jsonBody ??
                              ''))
                      ?.response
                      .message,
                  ParamType.String,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.rightToLeft,
                ),
              },
            );
          } else {
            context.goNamed(
              'main_case_listing_screen',
              queryParameters: {
                'notificationCount': serializeParam(
                  GetNotificationCountAPIStruct.maybeFromMap(
                          (_model.notificationCountAPIResponse?.jsonBody ?? ''))
                      ?.response
                      .count,
                  ParamType.int,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.rightToLeft,
                ),
              },
            );
          }
        } else {
          context.goNamed(
            'login_screen',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.rightToLeft,
              ),
            },
          );
        }
      } else {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Something went wrong! try again',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            duration: Duration(milliseconds: 2500),
            backgroundColor: Color(0xFFE72226),
          ),
        );
      }
    });

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
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.4,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          'assets/images/vdms_splash_image.png',
                        ).image,
                      ),
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
