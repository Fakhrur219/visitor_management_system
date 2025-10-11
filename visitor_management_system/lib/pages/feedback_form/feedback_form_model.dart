import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'feedback_form_widget.dart' show FeedbackFormWidget;
import 'package:flutter/material.dart';

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
