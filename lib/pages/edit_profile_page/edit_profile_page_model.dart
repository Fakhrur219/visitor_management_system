import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/change_photo/change_photo_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode3;
  TextEditingController? fullNameTextController3;
  String? Function(BuildContext, String?)? fullNameTextController3Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode4;
  TextEditingController? fullNameTextController4;
  String? Function(BuildContext, String?)? fullNameTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    fullNameFocusNode3?.dispose();
    fullNameTextController3?.dispose();

    fullNameFocusNode4?.dispose();
    fullNameTextController4?.dispose();
  }
}
