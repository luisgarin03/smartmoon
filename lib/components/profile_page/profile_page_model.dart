import '/components/back_button/back_button_widget.dart';
import '/components/playlist_details_tile/playlist_details_tile_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for r0-PlaylistDetailsTile.
  late PlaylistDetailsTileModel r0PlaylistDetailsTileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    r0PlaylistDetailsTileModel =
        createModel(context, () => PlaylistDetailsTileModel());
  }

  void dispose() {
    backButtonModel.dispose();
    r0PlaylistDetailsTileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
