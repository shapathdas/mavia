import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroWidget extends StatefulWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  _IntroWidgetState createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'intro'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  StreamBuilder<List<PostRecord>>(
                    stream: queryPostRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<PostRecord> pageViewPostRecordList = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: PageView.builder(
                          controller: pageViewController ??= PageController(
                              initialPage:
                                  min(0, pageViewPostRecordList.length - 1)),
                          scrollDirection: Axis.vertical,
                          itemCount: pageViewPostRecordList.length,
                          itemBuilder: (context, pageViewIndex) {
                            final pageViewPostRecord =
                                pageViewPostRecordList[pageViewIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFF070606),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'INTRO_PAGE_VideoButton_ON_TAP');
                                              logFirebaseEvent(
                                                  'VideoButton_navigate_to');

                                              context.pushNamed('media');
                                            },
                                            text: 'Video',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 70,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'INTRO_PAGE_MusicButton_ON_TAP');
                                              logFirebaseEvent(
                                                  'MusicButton_navigate_to');

                                              context.pushNamed('music');
                                            },
                                            text: 'Music',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'INTRO_PAGE_SideStackButton_ON_TAP');
                                              logFirebaseEvent(
                                                  'SideStackButton_navigate_to');

                                              context.pushNamed('videoList');
                                            },
                                            text: 'SideSt',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'INTRO_PAGE_Icon_gqsqa3tk_ON_TAP');
                                              logFirebaseEvent('Icon_auth');
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();
                                              await signOut();

                                              context.goNamedAuth(
                                                  'phoneLogin', mounted);
                                            },
                                            child: Icon(
                                              Icons.logout,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image.network(
                                      pageViewPostRecord.photo!,
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  if (valueOrDefault<bool>(
                          currentUserDocument?.containerDisplay, false) ==
                      false)
                    AuthUserStreamWidget(
                      child: Container(
                        width: 500,
                        height: 800,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
