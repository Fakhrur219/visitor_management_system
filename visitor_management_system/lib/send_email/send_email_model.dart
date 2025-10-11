import '/flutter_flow/flutter_flow_util.dart';
import 'send_email_widget.dart' show SendEmailWidget;
import 'package:flutter/material.dart';

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
