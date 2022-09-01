import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhonePasswordCAWidget extends StatefulWidget {
  const PhonePasswordCAWidget({
    Key? key,
    this.firstNamePS,
    this.lastNamePS,
    this.countryPS,
    this.genderPS,
    this.dateOfBirthPS,
    this.aadharPS,
  }) : super(key: key);

  final String? firstNamePS;
  final String? lastNamePS;
  final String? countryPS;
  final String? genderPS;
  final DateTime? dateOfBirthPS;
  final int? aadharPS;

  @override
  _PhonePasswordCAWidgetState createState() => _PhonePasswordCAWidgetState();
}

class _PhonePasswordCAWidgetState extends State<PhonePasswordCAWidget> {
  TextEditingController? oneTimePassController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'phonePasswordCA'});
    oneTimePassController = TextEditingController();
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
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                        child: TextFormField(
                          controller: oneTimePassController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Verification Code',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('PHONE_PASSWORD_C_A_VERIFY_BTN_ON_TAP');
                    logFirebaseEvent('Button_Auth');
                    GoRouter.of(context).prepareAuthEvent();
                    final smsCodeVal = oneTimePassController!.text;
                    if (smsCodeVal == null || smsCodeVal.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Enter SMS verification code.'),
                        ),
                      );
                      return;
                    }
                    final phoneVerifiedUser = await verifySmsCode(
                      context: context,
                      smsCode: smsCodeVal,
                    );
                    if (phoneVerifiedUser == null) {
                      return;
                    }

                    logFirebaseEvent('Button_Backend-Call');

                    final userUpdateData = createUserRecordData(
                      firstName: widget.firstNamePS,
                      lastName: widget.lastNamePS,
                      aadhar: widget.aadharPS,
                      dateOfBirth: widget.dateOfBirthPS,
                      country: widget.countryPS,
                      gender: widget.genderPS,
                    );
                    await currentUserReference!.update(userUpdateData);
                    logFirebaseEvent('Button_Navigate-To');
                    context.pushNamedAuth('PreHome', mounted);
                  },
                  text: 'Verify',
                  options: FFButtonOptions(
                    width: 250,
                    height: 44,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
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
