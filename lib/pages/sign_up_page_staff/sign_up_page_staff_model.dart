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
import 'sign_up_page_staff_widget.dart' show SignUpPageStaffWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpPageStaffModel extends FlutterFlowModel<SignUpPageStaffWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Photo widget.
  FocusNode? photoFocusNode;
  TextEditingController? photoTextController;
  String? Function(BuildContext, String?)? photoTextControllerValidator;
  bool isDataUploading_uploadDataStaff = false;
  FFUploadedFile uploadedLocalFile_uploadDataStaff =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataStaff = '';

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for StaffID widget.
  FocusNode? staffIDFocusNode;
  TextEditingController? staffIDTextController;
  String? Function(BuildContext, String?)? staffIDTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for PhoneNum widget.
  FocusNode? phoneNumFocusNode;
  TextEditingController? phoneNumTextController;
  String? Function(BuildContext, String?)? phoneNumTextControllerValidator;
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

    staffIDFocusNode?.dispose();
    staffIDTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    phoneNumFocusNode?.dispose();
    phoneNumTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    reEnterPassFocusNode?.dispose();
    reEnterPassTextController?.dispose();
  }
}
