import '../backend/api_requests/api_calls.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediaWidget extends StatefulWidget {
  const MediaWidget({Key? key}) : super(key: key);

  @override
  _MediaWidgetState createState() => _MediaWidgetState();
}

class _MediaWidgetState extends State<MediaWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  ApiCallResponse? apiResponse;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'media'});
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
                              'MEDIA_PAGE_UPLOAD_VIDEO_BTN_ON_TAP');
                          logFirebaseEvent('Button_upload_photo_video');
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                            allowVideo: true,
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            textColor:
                                FlutterFlowTheme.of(context).primaryBackground,
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

                          logFirebaseEvent('Button_backend_call');
                          apiResponse = await UploadVideoCall.call(
                            uploadvideourl: uploadedFileUrl,
                          );
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed(
                            'videoThumbnail',
                            queryParams: {
                              'upVid': serializeParam(
                                uploadedFileUrl,
                                ParamType.String,
                              ),
                              'responseAPI': serializeParam(
                                (apiResponse?.jsonBody ?? ''),
                                ParamType.JSON,
                              ),
                            }.withoutNulls,
                          );

                          setState(() {});
                        },
                        text: 'Upload Video',
                        options: FFButtonOptions(
                          width: 190,
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
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                          child: InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'MEDIA_PAGE_Icon_xo13rmm5_ON_TAP');
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
            ],
          ),
        ),
      ),
    );
  }
}
