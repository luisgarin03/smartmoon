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
import 'favourite_page_model.dart';
export 'favourite_page_model.dart';

class FavouritePageWidget extends StatefulWidget {
  const FavouritePageWidget({Key? key}) : super(key: key);

  @override
  _FavouritePageWidgetState createState() => _FavouritePageWidgetState();
}

class _FavouritePageWidgetState extends State<FavouritePageWidget>
    with TickerProviderStateMixin {
  late FavouritePageModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'backButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
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
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 300.ms,
          begin: Offset(0.0, -10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
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
    'rowOnPageLoadAnimation1': AnimationInfo(
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
    'rowOnPageLoadAnimation2': AnimationInfo(
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
          begin: Offset(0.0, -10.0),
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
    _model = createModel(context, () => FavouritePageModel());
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
      alignment: AlignmentDirectional(0.0, -1.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: Container(
                width: double.infinity,
                height: 240.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://i.scdn.co/image/ab6761610000e5eb12a2ef08d00dd7451a6dbed6',
                    ).image,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(69.0),
                    bottomRight: Radius.circular(69.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 30.0, 32.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.backButtonModel,
                          updateCallback: () => setState(() {}),
                          child: BackButtonWidget(),
                        ).animateOnPageLoad(
                            animationsMap['backButtonOnPageLoadAnimation']!),
                        SvgPicture.asset(
                          'assets/images/vert.svg',
                          width: 32.0,
                          height: 18.0,
                          fit: BoxFit.scaleDown,
                        ).animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation']!),
                      ],
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'rfqqqf2k' /* Ed Sheeran */,
                ),
                style: GoogleFonts.getFont(
                  'Satoshi',
                  color: FlutterFlowTheme.of(context).e1e1e1,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'ucey69j7' /* 5 Album , 256 Track */,
                ),
                style: GoogleFonts.getFont(
                  'Satoshi',
                  color: FlutterFlowTheme.of(context).d6d6d6,
                  fontWeight: FontWeight.w300,
                  fontSize: 13.0,
                ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '7njwfs7q' /* Edward Christopher Sheeran MBE... */,
                ),
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Satoshi',
                  color: FlutterFlowTheme.of(context).d6d6d6,
                  fontWeight: FontWeight.w300,
                  fontSize: 13.0,
                ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 0.0, 17.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'p20xgb5t' /* Albums */,
                  ),
                  style: GoogleFonts.getFont(
                    'Satoshi',
                    color: FlutterFlowTheme.of(context).dddddd,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation4']!),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 28.0,
                      height: 0.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              'https://i.scdn.co/image/ab67616d00001e02737c1bef4d45db62ac6dd2f1',
                              width: 140.0,
                              height: 135.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'wbevysro' /* = (Tour Edition) */,
                          ),
                          style: GoogleFonts.getFont(
                            'Satoshi',
                            color: FlutterFlowTheme.of(context).d6d6d6,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 16.0,
                      height: 0.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              'https://i.scdn.co/image/ab67616d00001e027ed2a6d678a53a5959b2894f',
                              width: 140.0,
                              height: 135.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'drtj1nut' /* No.6 Collaboration ... */,
                          ),
                          style: GoogleFonts.getFont(
                            'Satoshi',
                            color: FlutterFlowTheme.of(context).d6d6d6,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 16.0,
                      height: 0.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              'https://i.scdn.co/image/ab67616d00001e02ba5db46f4b838ef6027e6f96',
                              width: 140.0,
                              height: 135.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'i3phcmzt' /* ÷ (Deluxe) */,
                          ),
                          style: GoogleFonts.getFont(
                            'Satoshi',
                            color: FlutterFlowTheme.of(context).d6d6d6,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 16.0,
                      height: 0.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              'https://i.scdn.co/image/ab67616d00001e02407981084d79d283e24d428e',
                              width: 140.0,
                              height: 135.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '75615n04' /* x (Wembley Edition) */,
                          ),
                          style: GoogleFonts.getFont(
                            'Satoshi',
                            color: FlutterFlowTheme.of(context).d6d6d6,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 16.0,
                      height: 0.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              'https://i.scdn.co/image/ab67616d00001e02ed139c2e0e3681cc2d35e256',
                              width: 140.0,
                              height: 135.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '6qfchw42' /* + */,
                          ),
                          style: GoogleFonts.getFont(
                            'Satoshi',
                            color: FlutterFlowTheme.of(context).d6d6d6,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 28.0,
                      height: 0.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
            ),
            if (FFAppState().currentIndex == 0)
              Align(
                alignment: AlignmentDirectional(0.0, 1.94),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(29.0, 26.0, 29.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'gam00czp' /* Songs */,
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
                              '8pmicze7' /* See More */,
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
                          animationsMap['rowOnPageLoadAnimation2']!),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 27.0, 85.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 20.0),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'qdro55o6' /* Celestial */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '4iqantl9' /* Pokemon x Ed Sheeran */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
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
                                'y3h8qxib' /* 03:29 */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '1dkqmt2t' /* Bam Bam */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'rrzor42b' /* Camiila Cabello x Ed Sh... */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
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
                                '3xdw5ank' /* 03:26 */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'fqmbwc1f' /* Merry Christmas */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'goa8asjs' /* Elton John x Ed Sheeran */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
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
                                '7tyv8gju' /* 03:28 */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'iku5iu22' /* TJATQ */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '1qmumdr2' /* Tylor Swift x Ed Sheeran */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Satoshi',
                                    color: FlutterFlowTheme.of(context).d6d6d6,
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
                                'nuixc8e0' /* 03:05 */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
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
                  Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '02qyv3or' /* Call on me */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Satoshi',
                                  color: FlutterFlowTheme.of(context).d6d6d6,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '0w2trp8v' /* Vianney x Ed Sheeran */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Satoshi',
                                  color: FlutterFlowTheme.of(context).d6d6d6,
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
                              'kl2crpoy' /* 03:20 */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
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
                ],
              ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
            ),
          ],
        ),
      ),
    );
  }
}
