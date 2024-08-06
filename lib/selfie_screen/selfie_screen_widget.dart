import '/components/selfie_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'selfie_screen_model.dart';
export 'selfie_screen_model.dart';

class SelfieScreenWidget extends StatefulWidget {
  const SelfieScreenWidget({super.key});

  @override
  State<SelfieScreenWidget> createState() => _SelfieScreenWidgetState();
}

class _SelfieScreenWidgetState extends State<SelfieScreenWidget> {
  late SelfieScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelfieScreenModel());

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
                'S_2024_JULY_24',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.selfieWidgetModel,
                  updateCallback: () => setState(() {}),
                  child: const SelfieWidgetWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
