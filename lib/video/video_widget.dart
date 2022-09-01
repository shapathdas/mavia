import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({
    Key? key,
    this.streamURL,
    this.titleName,
  }) : super(key: key);

  final String? streamURL;
  final String? titleName;

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'video'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder<List<VideoRecord>>(
            stream: queryVideoRecord(
              queryBuilder: (videoRecord) =>
                  videoRecord.where('title', isEqualTo: widget.titleName),
              singleRecord: true,
            ),
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
              List<VideoRecord> columnVideoRecordList = snapshot.data!;
              // Return an empty Container when the document does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final columnVideoRecord = columnVideoRecordList.isNotEmpty
                  ? columnVideoRecordList.first
                  : null;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 400,
                      height: 250,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'VIDEO_PAGE_VideoPlayer_5m3pxjbi_ON_TAP');
                              logFirebaseEvent(
                                  'VideoPlayer_Google-Analytics-Event');
                              logFirebaseEvent('played');
                              logFirebaseEvent('VideoPlayer_Backend-Call');

                              final videoCreateData = createVideoRecordData(
                                playButtonClicked: getCurrentTimestamp,
                              );
                              await VideoRecord.collection
                                  .doc()
                                  .set(videoCreateData);
                            },
                            child: FlutterFlowVideoPlayer(
                              path: columnVideoRecord!.video!,
                              videoType: VideoType.network,
                              autoPlay: true,
                              looping: true,
                              showControls: true,
                              allowFullScreen: true,
                              allowPlaybackSpeedMenu: true,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              columnVideoRecord!.title!,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('VIDEO_PAGE_BUTTON_BTN_ON_TAP');
                        logFirebaseEvent('Button_Navigate-To');
                        context.pushNamed('intro');
                        logFirebaseEvent('Button_Close-Dialog,-Drawer,-Etc');
                        Navigator.pop(context);
                      },
                      text: 'Button',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
