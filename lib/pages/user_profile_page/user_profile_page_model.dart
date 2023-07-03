import '/components/profile_page/profile_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfilePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProfilePage component.
  late ProfilePageModel profilePageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    profilePageModel = createModel(context, () => ProfilePageModel());
  }

  void dispose() {
    unfocusNode.dispose();
    profilePageModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
