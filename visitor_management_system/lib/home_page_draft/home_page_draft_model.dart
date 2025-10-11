import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_draft_widget.dart' show HomePageDraftWidget;
import 'package:flutter/material.dart';

class HomePageDraftModel extends FlutterFlowModel<HomePageDraftWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
