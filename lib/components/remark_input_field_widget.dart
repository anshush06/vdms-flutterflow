import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'remark_input_field_model.dart';
export 'remark_input_field_model.dart';

class RemarkInputFieldWidget extends StatefulWidget {
  const RemarkInputFieldWidget({super.key});

  @override
  State<RemarkInputFieldWidget> createState() => _RemarkInputFieldWidgetState();
}

class _RemarkInputFieldWidgetState extends State<RemarkInputFieldWidget> {
  late RemarkInputFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RemarkInputFieldModel());

    _model.additionalRemarkFieldTextController ??= TextEditingController();
    _model.additionalRemarkFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
        child: TextFormField(
          controller: _model.additionalRemarkFieldTextController,
          focusNode: _model.additionalRemarkFieldFocusNode,
          onChanged: (_) => EasyDebounce.debounce(
            '_model.additionalRemarkFieldTextController',
            const Duration(milliseconds: 2000),
            () async {
              _model.saveRemarkResponse = await action_blocks.saveRemark(
                context,
                remarkVlue: _model.additionalRemarkFieldTextController.text,
              );

              setState(() {});
            },
          ),
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Roboto',
                  letterSpacing: 0.0,
                ),
            hintText: 'Additional Remark',
            hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Roboto',
                  letterSpacing: 0.0,
                ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).alternate,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Roboto',
                letterSpacing: 0.0,
              ),
          validator: _model.additionalRemarkFieldTextControllerValidator
              .asValidator(context),
        ),
      ),
    );
  }
}
