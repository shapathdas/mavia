import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoThumbnailWidget extends StatefulWidget {
  const VideoThumbnailWidget({
    Key? key,
    this.upVid,
    this.responseAPI,
  }) : super(key: key);

  final String? upVid;
  final dynamic responseAPI;

  @override
  _VideoThumbnailWidgetState createState() => _VideoThumbnailWidgetState();
}

class _VideoThumbnailWidgetState extends State<VideoThumbnailWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'videoThumbnail'});
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
                              'VIDEO_THUMBNAIL_UPLOAD_THUMBNAIL_BTN_ON_');
                          logFirebaseEvent('Button_upload_photo_video');
                          final selectedMedia = await selectMedia(
                            maxWidth: 1920.00,
                            maxHeight: 1080.00,
                            mediaSource: MediaSource.photoGallery,
                            multiImage: false,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            setState(() => isMediaUploading = true);
                            var downloadUrls = <String>[];
                            try {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              downloadUrls = (await Future.wait(
                                selectedMedia.map(
                                  (m) async =>
                                      await uploadData(m.storagePath, m.bytes),
                                ),
                              ))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                            } finally {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              isMediaUploading = false;
                            }
                            if (downloadUrls.length == selectedMedia.length) {
                              setState(
                                  () => uploadedFileUrl = downloadUrls.first);
                              showUploadMessage(context, 'Success!');
                            } else {
                              setState(() {});
                              showUploadMessage(
                                  context, 'Failed to upload media');
                              return;
                            }
                          }

                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed(
                            'videoDetails',
                            queryParams: {
                              'upVid': serializeParam(
                                widget.upVid,
                                ParamType.String,
                              ),
                              'responseAPI': serializeParam(
                                widget.responseAPI,
                                ParamType.JSON,
                              ),
                              'imgURL': serializeParam(
                                uploadedFileUrl,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Upload Thumbnail',
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
                                  'VIDEO_THUMBNAIL_Icon_3tyu43vh_ON_TAP');
                              logFirebaseEvent('Icon_navigate_to');

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
                  path: uploadedFileUrl,
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
            ],
          ),
        ),
      ),
    );
  }
}
