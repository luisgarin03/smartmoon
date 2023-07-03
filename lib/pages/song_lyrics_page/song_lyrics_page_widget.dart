import '/components/back_button/back_button_widget.dart';
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
import 'song_lyrics_page_model.dart';
export 'song_lyrics_page_model.dart';

class SongLyricsPageWidget extends StatefulWidget {
  const SongLyricsPageWidget({
    Key? key,
    this.imageURL,
    this.songName,
    this.artistName,
  }) : super(key: key);

  final String? imageURL;
  final String? songName;
  final String? artistName;

  @override
  _SongLyricsPageWidgetState createState() => _SongLyricsPageWidgetState();
}

class _SongLyricsPageWidgetState extends State<SongLyricsPageWidget>
    with TickerProviderStateMixin {
  late SongLyricsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 500.ms,
          begin: Offset(0.0, 500.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 500.ms,
          begin: Offset(0.0, 500.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 500.ms,
          begin: Offset(0.0, 500.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 300.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SongLyricsPageModel());
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
          child: Stack(
            children: [
              Hero(
                tag: widget.imageURL!,
                transitionOnUserGestures: true,
                child: Image.network(
                  widget.imageURL!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                  maxHeight: double.infinity,
                ),
                decoration: BoxDecoration(
                  color: Color(0x65000000),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 29.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              wrapWithModel(
                                model: _model.backButtonModel,
                                updateCallback: () => setState(() {}),
                                child: BackButtonWidget(),
                              ),
                              Text(
                                widget.songName!,
                                style: GoogleFonts.getFont(
                                  'Satoshi',
                                  color: FlutterFlowTheme.of(context).dddddd,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/images/vert.svg',
                                width: 4.0,
                                height: 18.0,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation']!),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 15.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'sdsokfu6' /* Well, I found a woman, stronge... */,
                            ),
                            textAlign: TextAlign.start,
                            style: GoogleFonts.getFont(
                              'Satoshi',
                              color: Color(0x80FFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 15.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'ix8vyozq' /* We are still kids, but we're s... */,
                            ),
                            textAlign: TextAlign.start,
                            style: GoogleFonts.getFont(
                              'Satoshi',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 15.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'igudgueu' /* Fighting against all odds I kn... */,
                            ),
                            textAlign: TextAlign.start,
                            style: GoogleFonts.getFont(
                              'Satoshi',
                              color: Color(0x80FFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation3']!),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(31.0, 0.0, 31.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 14.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: Container(
                                      width: 42.0,
                                      height: 42.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        widget.imageURL!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.songName!,
                                        style: GoogleFonts.getFont(
                                          'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .cbcbcb,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Text(
                                        widget.artistName!,
                                        style: GoogleFonts.getFont(
                                          'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .c939393,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/heart.svg',
                                    width: 24.0,
                                    height: 24.0,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Stack(
                              alignment:
                                  AlignmentDirectional(0.0, 0.1499999999999999),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 2.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: 2.5,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).b7b7b7,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.1, 0.0),
                                  child: Container(
                                    width: 16.0,
                                    height: 16.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).b7b7b7,
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 11.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '1dt6vggv' /* 2:25 */,
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).c878787,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'us1575ix' /* 4:02 */,
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).c878787,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/repeat.svg',
                                width: 21.0,
                                height: 21.0,
                                fit: BoxFit.scaleDown,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    31.0, 0.0, 0.0, 0.0),
                                child: SvgPicture.asset(
                                  'assets/images/previous.svg',
                                  width: 21.0,
                                  height: 21.0,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    27.0, 0.0, 27.0, 0.0),
                                child: Container(
                                  width: 51.0,
                                  height: 51.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1.0, 0.0, 0.0, 0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/pause.svg',
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 31.0, 0.0),
                                child: SvgPicture.asset(
                                  'assets/images/next.svg',
                                  width: 21.0,
                                  height: 21.0,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/images/shuffle.svg',
                                width: 21.0,
                                height: 21.0,
                                fit: BoxFit.scaleDown,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
