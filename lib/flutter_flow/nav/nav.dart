import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'login_screen',
          path: '/loginScreen',
          builder: (context, params) => const LoginScreenWidget(),
        ),
        FFRoute(
          name: 'main_case_listing_screen',
          path: '/mainCaseListingScreen',
          builder: (context, params) => MainCaseListingScreenWidget(
            notificationCount: params.getParam(
              'notificationCount',
              ParamType.int,
            ),
            tabIndex: params.getParam(
              'tabIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'splash_screen',
          path: '/splashScreen',
          builder: (context, params) => const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'case_details_screen',
          path: '/caseDetailsScreen',
          builder: (context, params) => CaseDetailsScreenWidget(
            selectedCaseDetails: params.getParam(
              'selectedCaseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
            currentCaseIndex: params.getParam(
              'currentCaseIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'xdfgfgjk',
          path: '/xdfgfgjk',
          builder: (context, params) => const XdfgfgjkWidget(),
        ),
        FFRoute(
          name: 'site_pictures_screen',
          path: '/sitePicturesScreen',
          builder: (context, params) => SitePicturesScreenWidget(
            caseDetails: params.getParam(
              'caseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'report_screen',
          path: '/reportScreen',
          builder: (context, params) => ReportScreenWidget(
            caseDetailsForReport: params.getParam(
              'caseDetailsForReport',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
            caseIndex: params.getParam(
              'caseIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'notification_screen',
          path: '/notificationScreen',
          builder: (context, params) => const NotificationScreenWidget(),
        ),
        FFRoute(
          name: 'case_actions_screen',
          path: '/caseActionsScreen',
          builder: (context, params) => CaseActionsScreenWidget(
            caseDetailsForActionScreen: params.getParam(
              'caseDetailsForActionScreen',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'selfie_screen',
          path: '/selfieScreen',
          builder: (context, params) => const SelfieScreenWidget(),
        ),
        FFRoute(
          name: 'travel_logs_screen',
          path: '/travelLogsScreen',
          builder: (context, params) => const TravelLogsScreenWidget(),
        ),
        FFRoute(
          name: 'single_travel_log_screen',
          path: '/singleTravelLogScreen',
          builder: (context, params) => SingleTravelLogScreenWidget(
            travelDetail: params.getParam(
              'travelDetail',
              ParamType.DataStruct,
              isList: false,
              structBuilder: TravelLogResponseStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'capture_reading_screen',
          path: '/captureReadingScreen',
          builder: (context, params) => CaptureReadingScreenWidget(
            enableDrawer: params.getParam(
              'enableDrawer',
              ParamType.String,
            ),
            type: params.getParam(
              'type',
              ParamType.String,
            ),
            clearImageData: params.getParam(
              'clearImageData',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'capture_reading_value_screen',
          path: '/captureReadingValueScreen',
          builder: (context, params) => CaptureReadingValueScreenWidget(
            image: params.getParam(
              'image',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: 'take_pictures_screen',
          path: '/takePicturesScreen',
          builder: (context, params) => TakePicturesScreenWidget(
            imageType: params.getParam(
              'imageType',
              ParamType.String,
            ),
            section: params.getParam(
              'section',
              ParamType.int,
            ),
            caseDetails: params.getParam(
              'caseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'capture_location_screen',
          path: '/captureLocationScreen',
          builder: (context, params) => CaptureLocationScreenWidget(
            caseDetails: params.getParam(
              'caseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'view_all_photographs',
          path: '/viewAllPhotographs',
          builder: (context, params) => ViewAllPhotographsWidget(
            imageType: params.getParam(
              'imageType',
              ParamType.String,
            ),
            section: params.getParam(
              'section',
              ParamType.int,
            ),
            caseDetails: params.getParam(
              'caseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'view_all_captured_images_screen',
          path: '/viewAllCapturedImagesScreen',
          builder: (context, params) => ViewAllCapturedImagesScreenWidget(
            caseDetails: params.getParam(
              'caseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'version_screen',
          path: '/versionScreen',
          builder: (context, params) => const VersionScreenWidget(),
        ),
        FFRoute(
          name: 'view_all_images_for_visited_and_completed',
          path: '/viewAllImagesForVisitedAndCompleted',
          builder: (context, params) =>
              ViewAllImagesForVisitedAndCompletedWidget(
            caseDetails: params.getParam(
              'caseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseStruct.fromSerializableMap,
            ),
            sectionType: params.getParam(
              'sectionType',
              ParamType.String,
            ),
            isAllImages: params.getParam(
              'isAllImages',
              ParamType.bool,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
