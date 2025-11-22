import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'create_meetings_widget.dart' show CreateMeetingsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreateMeetingsModel extends FlutterFlowModel<CreateMeetingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for meetingName widget.
  FocusNode? meetingNameFocusNode;
  TextEditingController? meetingNameTextController;
  String? Function(BuildContext, String?)? meetingNameTextControllerValidator;
  // State field(s) for time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  late MaskTextInputFormatter timeMask;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // State field(s) for date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  late MaskTextInputFormatter dateMask;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  late MaskTextInputFormatter locationMask;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for meeting_ID widget.
  FocusNode? meetingIDFocusNode;
  TextEditingController? meetingIDTextController;
  String? Function(BuildContext, String?)? meetingIDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    meetingNameFocusNode?.dispose();
    meetingNameTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();

    dateFocusNode?.dispose();
    dateTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    meetingIDFocusNode?.dispose();
    meetingIDTextController?.dispose();
  }
}
