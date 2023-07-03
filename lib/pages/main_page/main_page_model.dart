import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/components/home_page/home_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HomePage component.
  late HomePageModel homePageModel;
  // Model for BottomNavBar component.
  late BottomNavBarModel bottomNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    homePageModel = createModel(context, () => HomePageModel());
    bottomNavBarModel = createModel(context, () => BottomNavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    homePageModel.dispose();
    bottomNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
