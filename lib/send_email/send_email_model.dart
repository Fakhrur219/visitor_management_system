import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'send_email_widget.dart' show SendEmailWidget;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SendEmailModel extends FlutterFlowModel<SendEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for meeting_ID widget.
  FocusNode? meetingIDFocusNode;
  TextEditingController? meetingIDTextController;
  String? Function(BuildContext, String?)? meetingIDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    meetingIDFocusNode?.dispose();
    meetingIDTextController?.dispose();
  }
}
