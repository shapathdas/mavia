import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class UploadVideoCall {
  static Future<ApiCallResponse> call({
    String? uploadvideourl = '',
  }) {
    final body = '''
{
  "input": "${uploadvideourl}",
  "playback_policy": [
    "public"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'uploadVideo',
      apiUrl: 'https://api.mux.com/video/v1/assets',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic OWEwY2VhMzMtODU2Ny00NTM0LWFkMjktNjgyZWQ2Mzc3OTNjOkdVT3FwYlY3c2lkUTNYWFJvdEtnYWcyYTU1Q1laTW1EQW1yaDRRcGcycDAzMnp5WkhjUTBIbDNsTFk1Wm5BQ2JqSzI4WWN1R3FBOQ==',
        'Content-Type': 'application/json; charset=utf-8',
      },
      params: {
        'uploadvideourl': uploadvideourl,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
