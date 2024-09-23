import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'camerapage_widget.dart' show CamerapageWidget;
import 'package:flutter/material.dart';

class CamerapageModel extends FlutterFlowModel<CamerapageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for dd widget.
  FocusNode? ddFocusNode;
  TextEditingController? ddTextController;
  String? Function(BuildContext, String?)? ddTextControllerValidator;
  // State field(s) for brand widget.
  FocusNode? brandFocusNode;
  TextEditingController? brandTextController;
  String? Function(BuildContext, String?)? brandTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ddFocusNode?.dispose();
    ddTextController?.dispose();

    brandFocusNode?.dispose();
    brandTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
