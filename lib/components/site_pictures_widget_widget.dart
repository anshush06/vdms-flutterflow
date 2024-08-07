import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'site_pictures_widget_model.dart';
export 'site_pictures_widget_model.dart';

class SitePicturesWidgetWidget extends StatefulWidget {
  const SitePicturesWidgetWidget({
    super.key,
    required this.caseDetails,
    required this.caseIndex,
  });

  final ResponseStruct? caseDetails;
  final int? caseIndex;

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
                                if (functions
                                            .getDraftCaseIndexInList(
                                                FFAppState()
                                                    .caseDetails
                                                    .toList(),
                                                widget.caseDetails)
                                            .toString() !=
                                        '-1'
                                    ? true
                                    : false) {
                                  if (functions.filterImagesBySection(
                                              'selfie',
                                              FFAppState()
                                                  .caseDetails[
                                                      widget.caseIndex!]
                                                  .sitePictures
                                                  .toList(),
                                              widget.caseDetails!.id) !=
                                          null &&
                                      (functions.filterImagesBySection(
                                              'selfie',
                                              FFAppState()
                                                  .caseDetails[
                                                      widget.caseIndex!]
                                                  .sitePictures
                                                  .toList(),
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
                                        'caseIndex': serializeParam(
                                          widget.caseIndex,
                                          ParamType.int,
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
                                        'caseIndex': serializeParam(
                                          widget.caseIndex,
                                          ParamType.int,
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
                                      'caseIndex': serializeParam(
                                        widget.caseIndex,
                                        ParamType.int,
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
                                          functions
                                                      .getDraftCaseIndexInList(
                                                          FFAppState()
                                                              .caseDetails
                                                              .toList(),
                                                          widget.caseDetails)
                                                      .toString() !=
                                                  '-1'
                                              ? 'Selfie (${functions.filterImagesBySection('selfie', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                              : 'Selfie (0)',
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
                                  queryParameters: {
                                    'caseDetails': serializeParam(
                                      widget.caseDetails,
                                      ParamType.DataStruct,
                                    ),
                                    'caseIndex': serializeParam(
                                      widget.caseIndex,
                                      ParamType.int,
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
                                    if (functions
                                                .getDraftCaseIndexInList(
                                                    FFAppState()
                                                        .caseDetails
                                                        .toList(),
                                                    widget.caseDetails)
                                                .toString() !=
                                            '-1'
                                        ? true
                                        : false) {
                                      if (functions.filterImagesBySection(
                                                  'front',
                                                  FFAppState()
                                                      .caseDetails[
                                                          widget.caseIndex!]
                                                      .sitePictures
                                                      .toList(),
                                                  widget.caseDetails!.id) !=
                                              null &&
                                          (functions.filterImagesBySection(
                                                  'front',
                                                  FFAppState()
                                                      .caseDetails[
                                                          widget.caseIndex!]
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
                                              1,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                              1,
                                              ParamType.int,
                                            ),
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                    } else {
                                      context.pushNamed(
                                        'take_pictures_screen',
                                        queryParameters: {
                                          'imageType': serializeParam(
                                            'front',
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
                                          'caseIndex': serializeParam(
                                            widget.caseIndex,
                                            ParamType.int,
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
                                                functions
                                                            .getDraftCaseIndexInList(
                                                                FFAppState()
                                                                    .caseDetails
                                                                    .toList(),
                                                                widget
                                                                    .caseDetails)
                                                            .toString() !=
                                                        '-1'
                                                    ? 'Front (${functions.filterImagesBySection('front', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                    : 'Front (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'back',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'back',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'back',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'back',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                  functions
                                                              .getDraftCaseIndexInList(
                                                                  FFAppState()
                                                                      .caseDetails
                                                                      .toList(),
                                                                  widget
                                                                      .caseDetails)
                                                              .toString() !=
                                                          '-1'
                                                      ? 'Back (${functions.filterImagesBySection('back', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                      : 'Back (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'left',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'left',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'left',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'left',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                  functions
                                                              .getDraftCaseIndexInList(
                                                                  FFAppState()
                                                                      .caseDetails
                                                                      .toList(),
                                                                  widget
                                                                      .caseDetails)
                                                              .toString() !=
                                                          '-1'
                                                      ? 'Left ( ${functions.filterImagesBySection('left', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()} )'
                                                      : 'Left (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'right',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'right',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id))!
                                                .isNotEmpty) {
                                          context.pushNamed(
                                            'view_all_photographs',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'right',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'right',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'right',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                  functions
                                                              .getDraftCaseIndexInList(
                                                                  FFAppState()
                                                                      .caseDetails
                                                                      .toList(),
                                                                  widget
                                                                      .caseDetails)
                                                              .toString() !=
                                                          '-1'
                                                      ? 'Right (${functions.filterImagesBySection('right', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                      : 'Right (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'approach',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'approach',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'approach',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'approach',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                  functions
                                                              .getDraftCaseIndexInList(
                                                                  FFAppState()
                                                                      .caseDetails
                                                                      .toList(),
                                                                  widget
                                                                      .caseDetails)
                                                              .toString() !=
                                                          '-1'
                                                      ? 'Approach Road (${functions.filterImagesBySection('approach', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                      : 'Approach Road (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'projection',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'projection',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'projection',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'projection',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                  functions
                                                              .getDraftCaseIndexInList(
                                                                  FFAppState()
                                                                      .caseDetails
                                                                      .toList(),
                                                                  widget
                                                                      .caseDetails)
                                                              .toString() !=
                                                          '-1'
                                                      ? 'Projection (${functions.filterImagesBySection('projection', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                      : 'Projection (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'room',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'room',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'room',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'room',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                  functions
                                                              .getDraftCaseIndexInList(
                                                                  FFAppState()
                                                                      .caseDetails
                                                                      .toList(),
                                                                  widget
                                                                      .caseDetails)
                                                              .toString() !=
                                                          '-1'
                                                      ? 'Room (${functions.filterImagesBySection('room', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                      : 'Room (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'living',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'living',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'living',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'living',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                    functions
                                                                .getDraftCaseIndexInList(
                                                                    FFAppState()
                                                                        .caseDetails
                                                                        .toList(),
                                                                    widget
                                                                        .caseDetails)
                                                                .toString() !=
                                                            '-1'
                                                        ? 'DD/Living Room (${functions.filterImagesBySection('living', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                        : 'DD/Living Room (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'kitchen',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'kitchen',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'kitchen',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'kitchen',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                  functions
                                                              .getDraftCaseIndexInList(
                                                                  FFAppState()
                                                                      .caseDetails
                                                                      .toList(),
                                                                  widget
                                                                      .caseDetails)
                                                              .toString() !=
                                                          '-1'
                                                      ? 'Kitchen (${functions.filterImagesBySection('kitchen', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                      : 'Kitchen (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'shop',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'shop',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'shop',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'shop',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                      functions
                                                                  .getDraftCaseIndexInList(
                                                                      FFAppState()
                                                                          .caseDetails
                                                                          .toList(),
                                                                      widget
                                                                          .caseDetails)
                                                                  .toString() !=
                                                              '-1'
                                                          ? 'Shop/Office (${functions.filterImagesBySection('shop', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                          : 'Shop/Office (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'other',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'other',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'other',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'other',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                functions
                                                            .getDraftCaseIndexInList(
                                                                FFAppState()
                                                                    .caseDetails
                                                                    .toList(),
                                                                widget
                                                                    .caseDetails)
                                                            .toString() !=
                                                        '-1'
                                                    ? 'Other Photos/Documents (${functions.filterImagesBySection('other', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                    : 'Other Photos/Documents (0)',
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
                                      if (functions
                                                  .getDraftCaseIndexInList(
                                                      FFAppState()
                                                          .caseDetails
                                                          .toList(),
                                                      widget.caseDetails)
                                                  .toString() !=
                                              '-1'
                                          ? true
                                          : false) {
                                        if (functions.filterImagesBySection(
                                                    'draft',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
                                                        .sitePictures
                                                        .toList(),
                                                    widget.caseDetails!.id) !=
                                                null &&
                                            (functions.filterImagesBySection(
                                                    'draft',
                                                    FFAppState()
                                                        .caseDetails[
                                                            widget.caseIndex!]
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
                                                1,
                                                ParamType.int,
                                              ),
                                              'caseDetails': serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        } else {
                                          context.pushNamed(
                                            'take_pictures_screen',
                                            queryParameters: {
                                              'imageType': serializeParam(
                                                'draft',
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
                                              'caseIndex': serializeParam(
                                                widget.caseIndex,
                                                ParamType.int,
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
                                        }
                                      } else {
                                        context.pushNamed(
                                          'take_pictures_screen',
                                          queryParameters: {
                                            'imageType': serializeParam(
                                              'draft',
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
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
                                              ParamType.int,
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
                                                functions
                                                            .getDraftCaseIndexInList(
                                                                FFAppState()
                                                                    .caseDetails
                                                                    .toList(),
                                                                widget
                                                                    .caseDetails)
                                                            .toString() !=
                                                        '-1'
                                                    ? 'Draft Report Form (${functions.filterImagesBySection('draft', FFAppState().caseDetails[widget.caseIndex!].sitePictures.toList(), widget.caseDetails!.id)?.length.toString()})'
                                                    : 'Draft Report Form (0)',
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
                                      onPressed: () async {
                                        context.pushNamed(
                                          'view_all_captured_images_screen',
                                          queryParameters: {
                                            'caseDetails': serializeParam(
                                              widget.caseDetails,
                                              ParamType.DataStruct,
                                            ),
                                            'caseIndex': serializeParam(
                                              widget.caseIndex,
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
                                          context.pushNamed(
                                            'case_details_screen',
                                            queryParameters: {
                                              'selectedCaseDetails':
                                                  serializeParam(
                                                widget.caseDetails,
                                                ParamType.DataStruct,
                                              ),
                                              'currentCaseIndex':
                                                  serializeParam(
                                                functions
                                                    .getDraftCaseIndexInList(
                                                        FFAppState()
                                                            .caseDetails
                                                            .toList(),
                                                        widget.caseDetails),
                                                ParamType.int,
                                              ),
                                              'inspectionform': serializeParam(
                                                InspectionFormDataStruct(),
                                                ParamType.DataStruct,
                                              ),
                                            }.withoutNulls,
                                          );
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
