import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'remark_widget_model.dart';
export 'remark_widget_model.dart';

class RemarkWidgetWidget extends StatefulWidget {
  const RemarkWidgetWidget({
    super.key,
    required this.caseIdForRemark,
    required this.caseIndexForRemark,
  });

  final int? caseIdForRemark;
  final int? caseIndexForRemark;

  @override
  State<RemarkWidgetWidget> createState() => _RemarkWidgetWidgetState();
}

class _RemarkWidgetWidgetState extends State<RemarkWidgetWidget> {
  late RemarkWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RemarkWidgetModel());

    _model.remarksTextController ??= TextEditingController();
    _model.remarksFocusNode ??= FocusNode();

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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
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
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.remarksTextController,
                        focusNode: _model.remarksFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Enter your remark here.',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          filled: true,
                          fillColor: const Color(0xFFF5F5F5),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              letterSpacing: 0.0,
                            ),
                        validator: _model.remarksTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          _model.saveRemarkAPIResponse =
                              await VdmsApiCallsGroup.saveRemarkAPICall.call(
                            remark: _model.remarksTextController.text,
                            userId: functions
                                .convertStringtoInteger(FFAppState().userId),
                            caseId: widget.caseIdForRemark,
                          );

                          if (getJsonField(
                                (_model.saveRemarkAPIResponse?.jsonBody ?? ''),
                                r'''$.response''',
                              ) !=
                              null) {
                            FFAppState().updateCaseDetailsAtIndex(
                              widget.caseIndexForRemark!,
                              (e) => e
                                ..remark = _model.remarksTextController.text
                                ..remarkDate = functions.getTimeStampOfRemark(),
                            );
                            FFAppState().update(() {});
                            setState(() {
                              _model.remarksTextController?.clear();
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                  'Remark Saved Successfully',
                                  style: TextStyle(
                                    color: Color(0xFFFF8C25),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 2500),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );

                            FFAppState().update(() {});
                          }

                          setState(() {});
                        },
                        text: 'SEND STATUS',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFF8C25),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 100.0,
                  height: MediaQuery.sizeOf(context).height * 0.01,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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