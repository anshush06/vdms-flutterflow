import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'site_pictures_widget_model.dart';
export 'site_pictures_widget_model.dart';

class SitePicturesWidgetWidget extends StatefulWidget {
  const SitePicturesWidgetWidget({
    super.key,
    required this.caseDetails,
  });

  final ResponseStruct? caseDetails;

  @override
  State<SitePicturesWidgetWidget> createState() =>
      _SitePicturesWidgetWidgetState();
}

class _SitePicturesWidgetWidgetState extends State<SitePicturesWidgetWidget> {
  late SitePicturesWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SitePicturesWidgetModel());

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Select and click/upload photographs',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions.filterImagesBySection(
                                            'selfie',
                                            FFAppState().sitePictures.toList(),
                                            widget.caseDetails!.id) !=
                                        null &&
                                    (functions.filterImagesBySection(
                                            'selfie',
                                            FFAppState().sitePictures.toList(),
                                            widget.caseDetails!.id))!
                                        .isNotEmpty) {
                                  context.pushNamed(
                                    'view_all_photographs',
                                    queryParameters: {
                                      'imageType': serializeParam(
                                        'selfie',
                                        ParamType.String,
                                      ),
                                      'section': serializeParam(
                                        1,
                                        ParamType.int,
                                      ),
                                      'caseDetails': serializeParam(
                                        widget.caseDetails,
                                        ParamType.DataStruct,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                } else {
                                  context.pushNamed(
                                    'take_pictures_screen',
                                    queryParameters: {
                                      'imageType': serializeParam(
                                        'selfie',
                                        ParamType.String,
                                      ),
                                      'section': serializeParam(
                                        1,
                                        ParamType.int,
                                      ),
                                      'caseDetails': serializeParam(
                                        widget.caseDetails,
                                        ParamType.DataStruct,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                }
                              },
                              child: Container(
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
                                      0.0, 14.0, 10.0, 14.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Selfie (${functions.filterImagesBySection('selfie', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                          textAlign: TextAlign.center,
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
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'capture_location_screen',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                    ),
                                  },
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 0.0,
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
                                      0.0, 14.0, 5.0, 14.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Longitude and Latitude',
                                            textAlign: TextAlign.center,
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
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Outside Photographs',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: const Color(0xFF0F61AB),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.filterImagesBySection(
                                                'front',
                                                FFAppState()
                                                    .sitePictures
                                                    .toList(),
                                                widget.caseDetails!.id) !=
                                            null &&
                                        (functions.filterImagesBySection(
                                                'front',
                                                FFAppState()
                                                    .sitePictures
                                                    .toList(),
                                                widget.caseDetails!.id))!
                                            .isNotEmpty) {
                                      context.pushNamed(
                                        'view_all_photographs',
                                        queryParameters: {
                                          'imageType': serializeParam(
                                            'front',
                                            ParamType.String,
                                          ),
                                          'section': serializeParam(
                                            2,
                                            ParamType.int,
                                          ),
                                          'caseDetails': serializeParam(
                                            widget.caseDetails,
                                            ParamType.DataStruct,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                          ),
                                        },
                                      );
                                    } else {
                                      context.pushNamed(
                                        'take_pictures_screen',
                                        queryParameters: {
                                          'imageType': serializeParam(
                                            'front',
                                            ParamType.String,
                                          ),
                                          'section': serializeParam(
                                            2,
                                            ParamType.int,
                                          ),
                                          'caseDetails': serializeParam(
                                            widget.caseDetails,
                                            ParamType.DataStruct,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                          ),
                                        },
                                      );
                                    }
                                  },
                                  child: Container(
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
                                          0.0, 14.0, 5.0, 14.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.camera_alt,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 20.0, 0.0),
                                              child: Text(
                                                'Front (${functions.filterImagesBySection('front', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'back',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'back',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'back',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'back',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Back (${functions.filterImagesBySection('back', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'left',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'left',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'left',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'left',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Left (${functions.filterImagesBySection('left', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'right',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'right',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'front',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'front',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Right (${functions.filterImagesBySection('right', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'approach',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'approach',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'approach',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'approach',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 0.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Approach Road (${functions.filterImagesBySection('approach', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'projection',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'projection',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'projection',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'projection',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Projection (${functions.filterImagesBySection('projection', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Inside Photographs',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: const Color(0xFF0F61AB),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'room',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'room',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'room',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'front',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              2,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Room (${functions.filterImagesBySection('room', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'living',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'living',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'living',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'living',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.32,
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 20.0, 0.0),
                                                  child: Text(
                                                    'DD/Living Room (${functions.filterImagesBySection('living', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'kitchen',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'kitchen',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'kitchen',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'kitchen',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
                                                child: Text(
                                                  'Kitchen (${functions.filterImagesBySection('kitchen', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'shop',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'shop',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'shop',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'shop',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: SafeArea(
                                      child: Container(
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 14.0, 5.0, 14.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.camera_alt,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.32,
                                                  decoration: const BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Text(
                                                      'Shop/Office (${functions.filterImagesBySection('shop', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'other',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'other',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'other',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'other',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Other Photos/Documents (${functions.filterImagesBySection('other', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (functions.filterImagesBySection(
                                                  'draft',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'draft',
                                                  FFAppState()
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id))!
                                              .isNotEmpty) {
                                        context.pushNamed(
                                          'view_all_photographs',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'draft',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'draft',
                                              ParamType.String,
                                            ),
                                            'section': serializeParam(
                                              3,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
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
                                            0.0, 14.0, 5.0, 14.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Draft Report Form (${functions.filterImagesBySection('draft', FFAppState().sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.05,
                                    decoration: const BoxDecoration(),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'View All photos',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFF33B5E6),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.05,
                                      decoration: const BoxDecoration(),
                                      child: FFButtonWidget(
                                        onPressed: () async {
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
                                          _model.submitSurveyAPIResponse =
                                              await actions
                                                  .submitSurveyDocuments(
                                            widget.caseDetails!.id,
                                            FFAppState().userId,
                                            FFAppState().sitePictures.toList(),
                                          );
                                          if (_model.submitSurveyAPIResponse ==
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

                                          setState(() {});
                                        },
                                        text: 'Save',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFFFF8C25),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
