import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/homeclean/homeclean_widget.dart';
import '/pages/register_page/register_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_in_page_model.dart';
export 'sign_in_page_model.dart';

class SignInPageWidget extends StatefulWidget {
  const SignInPageWidget({Key? key}) : super(key: key);

  @override
  _SignInPageWidgetState createState() => _SignInPageWidgetState();
}

class _SignInPageWidgetState extends State<SignInPageWidget>
    with TickerProviderStateMixin {
  late SignInPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
    'imageOnPageLoadAnimation': AnimationInfo(
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
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
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
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 15.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 15.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
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
    'buttonOnPageLoadAnimation': AnimationInfo(
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
    'rowOnPageLoadAnimation2': AnimationInfo(
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
    'rowOnPageLoadAnimation3': AnimationInfo(
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
    'rowOnPageLoadAnimation4': AnimationInfo(
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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 20.0, 25.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(
                              'assets/images/left.svg',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                      Image.asset(
                        'assets/images/APP_(49).png',
                        width: 175.0,
                        height: 65.0,
                        fit: BoxFit.scaleDown,
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation']!),
                      Container(
                        width: 32.0,
                        height: 32.0,
                        constraints: BoxConstraints(
                          maxWidth: 0.0,
                          maxHeight: 0.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 47.0, 0.0, 22.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '5qri76dn' /* Sign In */,
                    ),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Meta font ',
                      color: FlutterFlowTheme.of(context).f2f2f2,
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 38.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'pceqmvx1' /* If You Need Any Support */,
                        ),
                        style: TextStyle(
                          fontFamily: 'Meta font ',
                          color: FlutterFlowTheme.of(context).e1e1e1,
                          fontWeight: FontWeight.w300,
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'iqtphuem' /*  Click Here */,
                        ),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primary,
                          fontWeight: FontWeight.w300,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 16.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 80.0,
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: 80.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Color(0x23F6F6F6),
                          width: 1.0,
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 5.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                'ox7jcpoo' /* Enter Username Or Email */,
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'Meta font ',
                                color: Color(0x9AA7A7A7),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontFamily: 'Meta font ',
                              color: FlutterFlowTheme.of(context).hintColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                            validator: _model.textController1Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 20.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 80.0,
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: 80.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Color(0x23F6F6F6),
                          width: 1.0,
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 5.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController2,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                '3bxz235o' /* Password */,
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'Meta font ',
                                color: Color(0x99A7A7A7),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontFamily: 'Meta font ',
                              color: FlutterFlowTheme.of(context).hintColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation3']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 0.0, 22.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'd1v9yltl' /* Recovery Password */,
                          ),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).aeaeae,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: HomecleanWidget(),
                        ),
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      '70syh2v7' /* Sign In */,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x1FC6C6C6),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily: 'Meta font ',
                            color: Colors.white,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['buttonOnPageLoadAnimation']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(33.0, 0.0, 33.0, 51.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 146.0,
                          height: 1.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).gradient1,
                                FlutterFlowTheme.of(context).gradient2
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '1vdk5q89' /* Or */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).dcdcdc,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 146.0,
                          height: 1.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).gradient2,
                                FlutterFlowTheme.of(context).gradient1
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation2']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(137.0, 0.0, 137.0, 57.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/google.svg',
                        width: 28.0,
                        height: 29.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/apple.svg',
                        width: 29.0,
                        height: 36.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation3']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 38.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'kd99nt0u' /* Not A Member ? */,
                        ),
                        style: TextStyle(
                          fontFamily: 'Meta font ',
                          color: FlutterFlowTheme.of(context).dbdbdb,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
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
                              child: RegisterPageWidget(),
                            ),
                          );
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'gzmbolgp' /*  Register Now */,
                          ),
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation4']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
