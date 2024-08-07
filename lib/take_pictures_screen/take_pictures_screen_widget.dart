import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'take_pictures_screen_model.dart';
export 'take_pictures_screen_model.dart';

class TakePicturesScreenWidget extends StatefulWidget {
  const TakePicturesScreenWidget({
    super.key,
    required this.imageType,
    required this.section,
    required this.caseDetails,
    required this.caseIndex,
  });

  final String? imageType;
  final int? section;
  final ResponseStruct? caseDetails;
  final int? caseIndex;

  @override
  State<TakePicturesScreenWidget> createState() =>
      _TakePicturesScreenWidgetState();
}

class _TakePicturesScreenWidgetState extends State<TakePicturesScreenWidget> {
  late TakePicturesScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TakePicturesScreenModel());

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
                'Select Selfie',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: const Color(0xFFF3F6F8),
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Container(
                              width: 100.0,
                              height: MediaQuery.sizeOf(context).height * 0.2,
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFF7FF),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                border: Border.all(
                                  color: const Color(0xFF0F61AB),
                                ),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    imageQuality: 64,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    setState(
                                        () => _model.isDataUploading = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();
                                    } finally {
                                      _model.isDataUploading = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                        selectedMedia.length) {
                                      setState(() {
                                        _model.uploadedLocalFile =
                                            selectedUploadedFiles.first;
                                      });
                                    } else {
                                      setState(() {});
                                      return;
                                    }
                                  }

                                  if ((_model.uploadedLocalFile.bytes
                                              ?.isNotEmpty ??
                                          false)) {
                                    FFAppState().addToSitePictures(
                                        SitePictureListResponseStruct(
                                      name: functions.getImageName(
                                          _model.uploadedLocalFile),
                                      bytes: functions.getImageByteArray(
                                          _model.uploadedLocalFile),
                                      section: widget.section,
                                      fieldName: widget.imageType,
                                      timestamp:
                                          functions.getCurrentTimeStamp(),
                                      caseId: widget.caseDetails?.id,
                                    ));
                                    FFAppState().updateCaseDetailsAtIndex(
                                      widget.caseIndex!,
                                      (e) => e
                                        ..updateSitePictures(
                                          (e) => e.add(
                                              SitePictureListResponseStruct(
                                            name: functions.getImageName(
                                                _model.uploadedLocalFile),
                                            bytes: functions.getImageByteArray(
                                                _model.uploadedLocalFile),
                                            section: widget.section,
                                            fieldName: widget.imageType,
                                            timestamp:
                                                functions.getCurrentTimeStamp(),
                                            caseId: widget.caseDetails?.id,
                                          )),
                                        ),
                                    );
                                    FFAppState().update(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Image Captured Successfully',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 3000),
                                        backgroundColor: Color(0xFFFF8C25),
                                      ),
                                    );
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context.pushNamed(
                                      'view_all_photographs',
                                      queryParameters: {
                                        'imageType': serializeParam(
                                          widget.imageType,
                                          ParamType.String,
                                        ),
                                        'section': serializeParam(
                                          widget.section,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.white,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 50.0,
                                      fillColor: const Color(0xFFEFF7FF),
                                      icon: const Icon(
                                        Icons.camera_enhance,
                                        color: Color(0xFF0F61AB),
                                        size: 34.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Hi,',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'You have not uploaded the images yet',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.safePop();
                            },
                            text: 'SAVE',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFFF8C25),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ].divide(const SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
