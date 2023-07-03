import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'register_or_sign_in_page_model.dart';
export 'register_or_sign_in_page_model.dart';

class RegisterOrSignInPageWidget extends StatefulWidget {
  const RegisterOrSignInPageWidget({Key? key}) : super(key: key);

  @override
  _RegisterOrSignInPageWidgetState createState() =>
      _RegisterOrSignInPageWidgetState();
}

class _RegisterOrSignInPageWidgetState
    extends State<RegisterOrSignInPageWidget> {
  late RegisterOrSignInPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterOrSignInPageModel());
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
          child: FlutterFlowSwipeableStack(
            topCardHeightFraction: 0.72,
            middleCardHeightFraction: 0.68,
            bottomCardHeightFraction: 0.75,
            topCardWidthFraction: 0.9,
            middleCardWidthFraction: 0.85,
            bottomCardWidthFraction: 0.8,
            onSwipeFn: (index) {},
            onLeftSwipe: (index) {},
            onRightSwipe: (index) {},
            onUpSwipe: (index) {},
            onDownSwipe: (index) {},
            itemBuilder: (context, index) {
              return [
                () => ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/APP_(52).png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                () => ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/APP_(47).png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                () => ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/APP_(44).png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                () => ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/APP_(45).png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                () => ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/APP_(46).png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
              ][index]();
            },
            itemCount: 5,
            controller: _model.swipeableStackController,
            enableSwipeUp: false,
            enableSwipeDown: false,
          ),
        ),
      ),
    );
  }
}
