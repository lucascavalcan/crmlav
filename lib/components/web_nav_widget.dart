import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WebNavWidget extends StatefulWidget {
  const WebNavWidget({
    Key? key,
    this.iconOne,
    this.iconTwo,
    this.iconThree,
    this.iconFour,
    this.colorBgOne,
    this.colorBgTwo,
    this.colorBgThree,
    this.colorBgFour,
    this.textOne,
    this.textTwo,
    this.textThree,
    this.textFour,
    this.iconFive,
    this.colorBgFive,
    this.textFive,
    this.colorBgSix,
    this.textSix,
    this.iconSix,
    this.iconSeven,
    this.textSeven,
    this.colorBgSeven,
  }) : super(key: key);

  final Widget? iconOne;
  final Widget? iconTwo;
  final Widget? iconThree;
  final Widget? iconFour;
  final Color? colorBgOne;
  final Color? colorBgTwo;
  final Color? colorBgThree;
  final Color? colorBgFour;
  final Color? textOne;
  final Color? textTwo;
  final Color? textThree;
  final Color? textFour;
  final Widget? iconFive;
  final Color? colorBgFive;
  final Color? textFive;
  final Color? colorBgSix;
  final Color? textSix;
  final Widget? iconSix;
  final Widget? iconSeven;
  final Color? textSeven;
  final Color? colorBgSeven;

  @override
  _WebNavWidgetState createState() => _WebNavWidgetState();
}

class _WebNavWidgetState extends State<WebNavWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 2,
          offset: Offset(0, 0),
          rotation: 0.009,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
      child: Container(
        width: 270,
        height: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF001D5B), Color(0xFF0049D9)],
            stops: [0, 1],
            begin: AlignmentDirectional(0, -1),
            end: AlignmentDirectional(0, 1),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(0),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (Theme.of(context).brightness == Brightness.light)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 52),
                        child: Image.asset(
                          'assets/images/LOGO_BRANCA_600X600_BRUNO.png',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.1,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  if (Theme.of(context).brightness == Brightness.dark)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 52),
                        child: Image.asset(
                          'assets/images/LOGO_BRANCA_600X600_BRUNO.png',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.1,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'Home',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 1920,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        widget.colorBgOne,
                        Color(0xFF4BFF23),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            widget.iconOne!,
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'yg07zi4c' /* Dashboard */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .subtitle2Family,
                                      color: widget.textOne,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2Family),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'myTeam',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 1920,
                    decoration: BoxDecoration(
                      color: widget.colorBgFive,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.iconFive!,
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '5s0d776i' /* Contatos */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: widget.textFive,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'Main_customerList',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: widget.colorBgTwo,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.iconTwo!,
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'lbojdpxg' /* Franqueados */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: widget.textTwo,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'Main_agenda',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: widget.colorBgSix,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.iconSix!,
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '44yql7ay' /* Agenda */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: widget.textSix,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'Main_Contracts',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: widget.colorBgThree,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.iconThree!,
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '9pjba90p' /* Lojas (Andamento) */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: widget.textThree,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'Main_LojasFinalizadas',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: widget.colorBgSeven,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.iconSeven!,
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'f5lo1udn' /* Lojas (Finalizadas) */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: widget.textSeven,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'Main_profilePage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: widget.colorBgFour,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.iconFour!,
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'nek17ojc' /* Configurações */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: widget.textFour,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                child: Container(
                  width: 240,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x32000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: Image.network(
                            'data:image/jpeg;base64,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',
                            width: 36,
                            height: 36,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'oiaq6vgq' /* Bruno Alexandria */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '9o7elpci' /* Bruno@GrupoHi.com.br */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
