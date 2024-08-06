import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  String? _usernameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (!RegExp(
            '^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,20}\$')
        .hasMatch(val)) {
      return 'Password should contain atleast 1 numeric, 1 alpabet and 1 special character.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (validateLoginAPI)] action in loginbutton widget.
  ApiCallResponse? loginapiresponse;
  // Stores action output result for [Backend Call - API (checkFieldEngineerTravelStatus)] action in loginbutton widget.
  ApiCallResponse? checkTravelStatusAPIResponse2;
  // Stores action output result for [Backend Call - API (getNotificationsCountAPI)] action in loginbutton widget.
  ApiCallResponse? notificationCountAPIResponse;

  @override
  void initState(BuildContext context) {
    usernameTextControllerValidator = _usernameTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
