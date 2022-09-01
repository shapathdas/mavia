import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreHomeWidget extends StatefulWidget {
  const PreHomeWidget({Key? key}) : super(key: key);

  @override
  _PreHomeWidgetState createState() => _PreHomeWidgetState();
}

class _PreHomeWidgetState extends State<PreHomeWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PreHome'});
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
              Text(
                'Welcome to mavia. \nyou are now in a waitlist.\n\nTo skip the waitlist please enter  the invitation code associated with your email id. ',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              TextFormField(
                controller: textController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[Some hint text...]',
                  hintStyle: FlutterFlowTheme.of(context).bodyText2,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
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
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Let me in',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('PRE_HOME_PAGE_Icon_k6w2twkk_ON_TAP');
                    logFirebaseEvent('Icon_Auth');
                    GoRouter.of(context).prepareAuthEvent();
                    await signOut();
                    context.goNamedAuth('EmailLogin', mounted);
                  },
                  child: Icon(
                    Icons.logout,
                    color: Colors.black,
                    size: 24,
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
