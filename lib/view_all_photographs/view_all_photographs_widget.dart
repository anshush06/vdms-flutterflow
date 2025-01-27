import '/backend/schema/structs/index.dart';
import '/components/show_carousel_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_all_photographs_model.dart';
export 'view_all_photographs_model.dart';

class ViewAllPhotographsWidget extends StatefulWidget {
  const ViewAllPhotographsWidget({
    super.key,
    required this.imageType,
    required this.section,
    required this.caseDetails,
  });

  final String? imageType;
  final int? section;
  final ResponseStruct? caseDetails;

  @override
  State<ViewAllPhotographsWidget> createState() =>
      _ViewAllPhotographsWidgetState();
}

class _ViewAllPhotographsWidgetState extends State<ViewAllPhotographsWidget> {
  late ViewAllPhotographsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewAllPhotographsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
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
                  widget.caseDetails?.refNo,
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
              borderColor: FlutterFlowTheme.of(context).secondary,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).secondary,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          final eachImage = functions
                                                  .filterImagesBySection(
                                                      widget.imageType!,
                                                      FFAppState()
                                                          .sitePictures
                                                          .toList(),
                                                      widget.caseDetails!.id)
                                                  ?.toList() ??
                                              [];

                                          return ListView.separated(
                                            padding: const EdgeInsets.fromLTRB(
                                              0,
                                              10.0,
                                              0,
                                              0,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: eachImage.length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 10.0),
                                            itemBuilder:
                                                (context, eachImageIndex) {
                                              final eachImageItem =
                                                  eachImage[eachImageIndex];
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Builder(
                                                      builder: (context) =>
                                                          InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
                                                                insetPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                alignment: const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () =>
                                                                      FocusScope.of(
                                                                              dialogContext)
                                                                          .unfocus(),
                                                                  child:
                                                                      ShowCarouselWidget(
                                                                    parameter1:
                                                                        eachImageIndex,
                                                                    parameter2: functions.filterImagesBySection(
                                                                        widget
                                                                            .imageType!,
                                                                        FFAppState()
                                                                            .sitePictures
                                                                            .toList(),
                                                                        widget
                                                                            .caseDetails!
                                                                            .id)!,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child: SizedBox(
                                                          width: 100.0,
                                                          height: 100.0,
                                                          child: custom_widgets
                                                              .ImageWidget(
                                                            width: 100.0,
                                                            height: 100.0,
                                                            fileName:
                                                                eachImageItem
                                                                    .name,
                                                            text: eachImageItem
                                                                .timestamp,
                                                            byteArray:
                                                                eachImageItem
                                                                    .bytes,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor: Colors.white,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor: Colors.white,
                                                    icon: const Icon(
                                                      Icons.delete_sharp,
                                                      color: Color(0xFF0F61AB),
                                                      size: 25.0,
                                                    ),
                                                    onPressed: () async {
                                                      FFAppState().removeAtIndexFromSitePictures(
                                                          functions.getCurrentImageIndexByID(
                                                              eachImageItem
                                                                  .name,
                                                              FFAppState()
                                                                  .sitePictures
                                                                  .toList()));
                                                      setState(() {});
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 15.0))
                                        .addToEnd(const SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: const Color(0xFF33B5E5),
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0xFF33B5E5),
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          imageQuality: 64,
                          allowPhoto: true,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          try {
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
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

                        if ((_model.uploadedLocalFile.bytes?.isNotEmpty ??
                                false)) {
                          _model.image =
                              actions.addTimestampAndNameToImage(
                            functions
                                .getImageByteArray(_model.uploadedLocalFile)
                                .toList(),
                            functions.getImageName(_model.uploadedLocalFile)!,
                          );
                          FFAppState()
                              .addToSitePictures(SitePictureListResponseStruct(
                            name: functions
                                .getImageName(_model.uploadedLocalFile),
                            bytes: _model.image,
                            section: widget.section,
                            fieldName: widget.imageType,
                            timestamp: functions.getCurrentTimeStamp(),
                            caseId: widget.caseDetails?.id,
                          ));
                          FFAppState().update(() {});
                        }

                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.safePop();
                  },
                  text: 'GO BACK',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFFF8C25),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ].addToEnd(const SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
