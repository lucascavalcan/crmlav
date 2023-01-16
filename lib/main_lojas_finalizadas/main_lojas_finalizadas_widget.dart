import '../components/web_nav_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLojasFinalizadasWidget extends StatefulWidget {
  const MainLojasFinalizadasWidget({Key? key}) : super(key: key);

  @override
  _MainLojasFinalizadasWidgetState createState() =>
      _MainLojasFinalizadasWidgetState();
}

class _MainLojasFinalizadasWidgetState extends State<MainLojasFinalizadasWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 10),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: !isWeb
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryColor,
              automaticallyImplyLeading: false,
              title: Text(
                FFLocalizations.of(context).getText(
                  'no8i0kcz' /* Dashboard */,
                ),
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).title1Family),
                    ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              actions: [],
              centerTitle: false,
              elevation: 0,
            )
          : null,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    WebNavWidget(
                      iconOne: Icon(
                        Icons.dashboard_rounded,
                        color: Colors.white,
                      ),
                      iconTwo: Icon(
                        Icons.group,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      iconThree: Icon(
                        Icons.home_rounded,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      iconFour: Icon(
                        Icons.miscellaneous_services,
                        color: Color(0xFFFEFEFE),
                      ),
                      colorBgOne: Colors.transparent,
                      colorBgTwo: Colors.transparent,
                      colorBgThree: Colors.transparent,
                      colorBgFour: Colors.transparent,
                      textOne: FlutterFlowTheme.of(context).secondaryText,
                      textTwo: FlutterFlowTheme.of(context).secondaryText,
                      textThree: FlutterFlowTheme.of(context).secondaryText,
                      textFour: FlutterFlowTheme.of(context).secondaryText,
                      iconFive: Icon(
                        Icons.reduce_capacity,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      colorBgFive: Color(0x00F4F6FC),
                      textFive: Color(0xFF8A9299),
                      colorBgSix: Color(0x00F4F6FC),
                      textSix: FlutterFlowTheme.of(context).secondaryText,
                      iconSix: Icon(
                        Icons.calendar_today_sharp,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      iconSeven: Icon(
                        Icons.home_work_rounded,
                        color: Color(0xFF00D931),
                      ),
                      textSeven: FlutterFlowTheme.of(context).primaryText,
                      colorBgSeven:
                          FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
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
