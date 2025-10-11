import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_page_visitor_widget.dart' show SignUpPageVisitorWidget;
import 'package:flutter/material.dart';

class SignUpPageVisitorModel extends FlutterFlowModel<SignUpPageVisitorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Photo widget.
  FocusNode? photoFocusNode;
  TextEditingController? photoTextController;
  String? Function(BuildContext, String?)? photoTextControllerValidator;
  bool isDataUploading_uploadDataGuy = false;
  FFUploadedFile uploadedLocalFile_uploadDataGuy =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataGuy = '';

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for reEnterPass widget.
  FocusNode? reEnterPassFocusNode;
  TextEditingController? reEnterPassTextController;
  late bool reEnterPassVisibility;
  String? Function(BuildContext, String?)? reEnterPassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    reEnterPassVisibility = false;
  }

  @override
  void dispose() {
    photoFocusNode?.dispose();
    photoTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    reEnterPassFocusNode?.dispose();
    reEnterPassTextController?.dispose();
  }
}
