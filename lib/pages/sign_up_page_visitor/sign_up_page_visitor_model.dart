import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'sign_up_page_visitor_widget.dart' show SignUpPageVisitorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpPageVisitorModel extends FlutterFlowModel<SignUpPageVisitorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Photo widget.
  FocusNode? photoFocusNode;
  TextEditingController? photoTextController;
  String? Function(BuildContext, String?)? photoTextControllerValidator;
  bool isDataUploading_uploadDataGuy = false;
  FFUploadedFile uploadedLocalFile_uploadDataGuy =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
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
  bool isDataUploading_uploadDataFak = false;
  FFUploadedFile uploadedLocalFile_uploadDataFak =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

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
