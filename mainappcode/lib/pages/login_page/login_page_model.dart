import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for loginemail widget.
  FocusNode? loginemailFocusNode;
  TextEditingController? loginemailTextController;
  String? Function(BuildContext, String?)? loginemailTextControllerValidator;
  // State field(s) for loginpw widget.
  FocusNode? loginpwFocusNode;
  TextEditingController? loginpwTextController;
  late bool loginpwVisibility;
  String? Function(BuildContext, String?)? loginpwTextControllerValidator;

  @override
  void initState(BuildContext context) {
    loginpwVisibility = false;
  }

  @override
  void dispose() {
    loginemailFocusNode?.dispose();
    loginemailTextController?.dispose();

    loginpwFocusNode?.dispose();
    loginpwTextController?.dispose();
  }
}
