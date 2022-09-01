import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoDetailsWidget extends StatefulWidget {
  const VideoDetailsWidget({
    Key? key,
    this.upVid,
    this.responseAPI,
    this.imgURL,
  }) : super(key: key);

  final String? upVid;
  final dynamic responseAPI;
  final String? imgURL;

  @override
  _VideoDetailsWidgetState createState() => _VideoDetailsWidgetState();
}

class _VideoDetailsWidgetState extends State<VideoDetailsWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'videoDetails'});
    textController = TextEditingController();
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'VIDEO_DETAILS_COMPLETE_UPLOAD_BTN_ON_TAP');
                          logFirebaseEvent('Button_Backend-Call');

                          final videoCreateData = createVideoRecordData(
                            video: 'https://stream.mux.com/${getJsonField(
                              widget.responseAPI,
                              r'''$..playback_ids[0].id''',
                            ).toString()}.m3u8',
                            title: textController!.text,
                            aPIResponse: 'https://stream.mux.com/${getJsonField(
                              widget.responseAPI,
                              r'''$..playback_ids[0].id''',
                            ).toString()}',
                            thumbnail: widget.imgURL,
                          );
                          await VideoRecord.collection
                              .doc()
                              .set(videoCreateData);
                          logFirebaseEvent('Button_Navigate-To');
                          context.pushNamed('intro');
                        },
                        text: 'Complete Upload',
                        options: FFButtonOptions(
                          width: 230,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                          child: InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'VIDEO_DETAILS_PAGE_Icon_780kxz1e_ON_TAP');
                              logFirebaseEvent('Icon_Navigate-To');
                              context.pushNamed('EmailLogin');
                            },
                            child: Icon(
                              Icons.chevron_left_sharp,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FlutterFlowMediaDisplay(
                  path: widget.upVid!,
                  imageBuilder: (path) => Image.network(
                    path,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  videoPlayerBuilder: (path) => FlutterFlowVideoPlayer(
                    path: path,
                    width: 300,
                    autoPlay: false,
                    looping: true,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: TextFormField(
                  controller: textController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
