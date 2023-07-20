import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'musicplayerpage_model.dart';
export 'musicplayerpage_model.dart';

class MusicplayerpageWidget extends StatefulWidget {
  const MusicplayerpageWidget({Key? key}) : super(key: key);

  @override
  _MusicplayerpageWidgetState createState() => _MusicplayerpageWidgetState();
}

class _MusicplayerpageWidgetState extends State<MusicplayerpageWidget> {
  late MusicplayerpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicplayerpageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  child: custom_widgets.AudioPlayerWidget(
                    width: double.infinity,
                    height: 500.0,
                    audioUrl:
                        'https://www.audiosocket.com/search?query=[{\"key\":\"28985560\",\"value\":\"28985560\",\"type\":\"free\"}]&sort={\"featured\":-1,\"createdAt\":-1}',
                  ),
                ),
              ),
              Container(
                width: 400.0,
                height: 300.0,
                child: custom_widgets.Justwaveplayer(
                  width: 400.0,
                  height: 300.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
