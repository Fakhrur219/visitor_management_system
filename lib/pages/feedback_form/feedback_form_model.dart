import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'feedback_form_widget.dart' show FeedbackFormWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FeedbackFormModel extends FlutterFlowModel<FeedbackFormWidget> {
  ///  Local state fields for this page.

  String? meetingURL;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for bugs widget.
  FocusNode? bugsFocusNode;
  TextEditingController? bugsTextController;
  String? Function(BuildContext, String?)? bugsTextControllerValidator;
  // State field(s) for experience widget.
  FocusNode? experienceFocusNode;
  TextEditingController? experienceTextController;
  String? Function(BuildContext, String?)? experienceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bugsFocusNode?.dispose();
    bugsTextController?.dispose();

    experienceFocusNode?.dispose();
    experienceTextController?.dispose();
  }
}
