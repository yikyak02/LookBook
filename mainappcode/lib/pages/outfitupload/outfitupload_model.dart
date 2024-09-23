import '/flutter_flow/flutter_flow_util.dart';
import 'outfitupload_widget.dart' show OutfituploadWidget;
import 'package:flutter/material.dart';

class OutfituploadModel extends FlutterFlowModel<OutfituploadWidget> {
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
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ddFocusNode?.dispose();
    ddTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
