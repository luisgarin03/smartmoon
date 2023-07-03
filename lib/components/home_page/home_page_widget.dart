import '/components/album_details_tile/album_details_tile_widget.dart';
import '/components/song_details_tile/song_details_tile_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/song_details_page/song_details_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
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
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: Offset(20.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 300.ms,
          begin: Offset(20.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 300.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (FFAppState().currentIndex == 0)
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 30.0, 25.0, 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/search.svg',
                        width: 25.0,
                        height: 25.0,
                        fit: BoxFit.cover,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation1']!),
                      Image.asset(
                        'assets/images/APP_(49).png',
                        width: 108.0,
                        height: 33.0,
                        fit: BoxFit.scaleDown,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation2']!),
                      SvgPicture.asset(
                        'assets/images/vert.svg',
                        width: 4.0,
                        height: 18.0,
                        fit: BoxFit.cover,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation3']!),
                    ],
                  ),
                ),
              ),
            if (FFAppState().currentIndex == 0)
              Align(
                alignment: AlignmentDirectional(0.0, -0.78),
                child: Container(
                  height: 142.6,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -0.71),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 0.0, 28.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 118.0,
                                  constraints: BoxConstraints(
                                    maxWidth: double.infinity,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(-0.85, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '7grx8kbj' /* New Song */,
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Satoshi',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .fbfbfb,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2dfjo0nc' /* F64 */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fbfbfb,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 19.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8jxrig4q' /* Ed Sheeran */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fbfbfb,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.75, -0.75),
                              child: Image.asset(
                                'assets/images/union_3.png',
                                height: 100.0,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['stackOnPageLoadAnimation']!),
                      ),
                    ],
                  ),
                ),
              ),
            if (FFAppState().currentIndex == 0)
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.47),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 24.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 34.0,
                                height: 0.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '988l9f7l' /* Hello World */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 40.0,
                                height: 0.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 3.0, 0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  FFLocalizations.of(context).getText(
                                    'qivfalfi' /* Albums */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                )),
                              ),
                              Container(
                                width: 40.0,
                                height: 0.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 3.0, 0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  FFLocalizations.of(context).getText(
                                    'pln6tnao' /* Artists */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                )),
                              ),
                              Container(
                                width: 40.0,
                                height: 0.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 3.0, 0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  FFLocalizations.of(context).getText(
                                    'd6bnfnyc' /* Podcasts */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                )),
                              ),
                              Container(
                                width: 40.0,
                                height: 0.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 3.0, 0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  FFLocalizations.of(context).getText(
                                    'nnym737u' /* Playlists */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).c616161,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                )),
                              ),
                              Container(
                                width: 28.0,
                                height: 0.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation1']!),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 28.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://sun9-40.userapi.com/impf/c621705/v621705168/38088/ozNr6edPo9w.jpg?size=604x256&quality=96&sign=65cfe0a5b385ead2615c601a5d977da6&c_uniq_tag=aw-1RY8snYllk9s5KLLu6PU_BAnp581q5AjI5dzImsY&type=album',
                                    songName: 'Perfect',
                                    artistName: 'Ed Sheeran',
                                  ),
                                ),
                              );
                            },
                            child: wrapWithModel(
                              model: _model.songDetailsTileModel,
                              updateCallback: () => setState(() {}),
                              child: SongDetailsTileWidget(
                                imageURL:
                                    'https://sun9-40.userapi.com/impf/c621705/v621705168/38088/ozNr6edPo9w.jpg?size=604x256&quality=96&sign=65cfe0a5b385ead2615c601a5d977da6&c_uniq_tag=aw-1RY8snYllk9s5KLLu6PU_BAnp581q5AjI5dzImsY&type=album',
                                songName: 'Perfect',
                                artistName: 'Ed Sheeran',
                              ),
                            ),
                          ),
                          Container(
                            width: 14.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b2739618642c20d509b21b11301f',
                                    songName: 'If I Can Dream',
                                    artistName: 'Elvis Presely',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1.0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 13.0),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b2739618642c20d509b21b11301f',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b2739618642c20d509b21b11301f',
                                              width: 147.0,
                                              height: 185.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29.0,
                                        height: 29.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 3.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'p63aihyo' /* If I Can Dream */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'lzznz5ux' /* Elvis Presely */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b273e13ab134bdec59e2d0e82290',
                                    songName: 'Love Yourself',
                                    artistName: 'Justin Bieber',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1.0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 13.0),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b273e13ab134bdec59e2d0e82290',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b273e13ab134bdec59e2d0e82290',
                                              width: 147.0,
                                              height: 185.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29.0,
                                        height: 29.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 3.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'bdge4nmz' /* Love Yourself */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'p1gqigra' /* Justin Bieber */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b2734e0362c225863f6ae2432651',
                                    songName: 'Fix You',
                                    artistName: 'Coldplay',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1.0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 13.0),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b2734e0362c225863f6ae2432651',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b2734e0362c225863f6ae2432651',
                                              width: 147.0,
                                              height: 185.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29.0,
                                        height: 29.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 3.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'dndl4ee4' /* Fix You */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'dpd4aerc' /* Coldplay */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: SongDetailsPageWidget(
                                    imageURL:
                                        'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
                                    songName: 'As It Was',
                                    artistName: 'Harry Styles',
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.8, 1.0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 13.0),
                                        child: Hero(
                                          tag:
                                              'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  'https://i.scdn.co/image/ab67616d0000b273b46f74097655d7f353caab14',
                                              width: 147.0,
                                              height: 185.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, 0.43),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 29.0,
                                        height: 29.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 3.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'gxzwuwvn' /* As It Was */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '0vcblwsp' /* Harry Styles */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).e1e1e1,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 14.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation2']!),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(34.0, 37.0, 29.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'jm9445b6' /* Albums */,
                            ),
                            style: GoogleFonts.getFont(
                              'Satoshi',
                              color: FlutterFlowTheme.of(context).dbdbdb,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '99k6hyk0' /* See More */,
                            ),
                            style: GoogleFonts.getFont(
                              'Satoshi',
                              color: FlutterFlowTheme.of(context).c6c6c6,
                              fontWeight: FontWeight.w300,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation3']!),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          28.0, 23.0, 20.0, 85.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.albumDetailsTileModel,
                            updateCallback: () => setState(() {}),
                            child: AlbumDetailsTileWidget(
                              albumName: '÷ (Deluxe)',
                              artistName: 'Ed Sheeran',
                              duration: '59:33',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 19.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 23.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37.0,
                                        height: 37.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'on8cy7us' /* Elvis 30 #1 Hits */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '1iambqa3' /* Elvis Presely */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
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
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'qjclos1a' /* 1:18:00 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49.0, 0.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21.0,
                                        height: 21.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 19.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 23.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37.0,
                                        height: 37.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'rrv8xchs' /* Fine Line */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'xrbxf5nj' /* Harry Styles */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
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
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'sorg56u6' /* 46:43 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49.0, 0.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21.0,
                                        height: 21.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 19.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 23.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37.0,
                                        height: 37.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '4ifwapi7' /* FOUR (Deluxe) */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '4gy7wswa' /* One Direction */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
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
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '67v5ppq4' /* 57:15 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49.0, 0.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21.0,
                                        height: 21.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 19.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 23.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/play.svg',
                                        width: 37.0,
                                        height: 37.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'mffgqtpg' /* V (Asis Tour) */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'y7eb3apf' /* Maroon 5 */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .d6d6d6,
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
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'giwx9cec' /* 1:18:00 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          49.0, 0.0, 0.0, 0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart_filled.svg',
                                        width: 21.0,
                                        height: 21.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['columnOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
