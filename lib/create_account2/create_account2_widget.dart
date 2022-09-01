import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount2Widget extends StatefulWidget {
  const CreateAccount2Widget({Key? key}) : super(key: key);

  @override
  _CreateAccount2WidgetState createState() => _CreateAccount2WidgetState();
}

class _CreateAccount2WidgetState extends State<CreateAccount2Widget> {
  DateTime? datePicked;
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  String? genderValue;
  String? countryValue;
  String? emailOrphoneValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'createAccount2'});
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
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: TextFormField(
                            controller: firstNameController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              hintText: 'e.g. Elon',
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                          child: TextFormField(
                            controller: lastNameController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              hintText: 'e.g. Musk',
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            width: 336,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Date of Birth',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 7, 0, 0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat('yMMMd', datePicked),
                                            'e.g. Aug 19, 2022',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 20, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'CREATE_ACCOUNT2_Icon_az1wqaam_ON_TAP');
                                      logFirebaseEvent('Icon_Date-Time-Picker');
                                      if (kIsWeb) {
                                        final _datePickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2050),
                                        );

                                        if (_datePickedDate != null) {
                                          setState(
                                            () => datePicked = DateTime(
                                              _datePickedDate.year,
                                              _datePickedDate.month,
                                              _datePickedDate.day,
                                            ),
                                          );
                                        }
                                      } else {
                                        await DatePicker.showDatePicker(
                                          context,
                                          showTitleActions: true,
                                          onConfirm: (date) {
                                            setState(() => datePicked = date);
                                          },
                                          currentTime: getCurrentTimestamp,
                                          minTime: DateTime(0, 0, 0),
                                        );
                                      }
                                    },
                                    child: Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: FlutterFlowDropDown(
                            options: ['She / Her', 'He / Him', 'They / Them'],
                            onChanged: (val) =>
                                setState(() => genderValue = val),
                            width: 335,
                            height: 50,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            hintText: 'Gender',
                            elevation: 2,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: FlutterFlowDropDown(
                            options: [
                              'Afghanistan',
                              'Albania',
                              'Algeria',
                              'Andorra',
                              'Angola',
                              'Antigua and Barbuda',
                              'Argentina',
                              'Armenia',
                              'Australia',
                              'Austria',
                              'Azerbaijan',
                              'Bahamas',
                              'Bahrain',
                              'Bangladesh'
                            ],
                            onChanged: (val) =>
                                setState(() => countryValue = val),
                            width: 335,
                            height: 50,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            hintText: 'Country',
                            elevation: 2,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: FlutterFlowDropDown(
                            options: ['Email', 'Phone Number'],
                            onChanged: (val) =>
                                setState(() => emailOrphoneValue = val),
                            width: 335,
                            height: 50,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            hintText: 'Email / Phone Number',
                            elevation: 2,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (emailOrphoneValue == 'Email')
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'CREATE_ACCOUNT2_CREATE_ACCOUNT_WITH_EMAI');
                      logFirebaseEvent('Button_Navigate-To');
                      context.pushNamed(
                        'EmailPassword',
                        queryParams: {
                          'firstName': serializeParam(
                              firstNameController!.text, ParamType.String),
                          'lastName': serializeParam(
                              lastNameController!.text, ParamType.String),
                          'dateOfBirth':
                              serializeParam(datePicked, ParamType.DateTime),
                          'gender':
                              serializeParam(genderValue, ParamType.String),
                          'country':
                              serializeParam(countryValue, ParamType.String),
                        }.withoutNulls,
                      );
                    },
                    text: 'Create Account with Email',
                    options: FFButtonOptions(
                      width: 250,
                      height: 44,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
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
              if (emailOrphoneValue == 'Phone Number')
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'CREATE_ACCOUNT2_CREATE_ACCOUNT_WITH_PHON');
                      logFirebaseEvent('Button_Navigate-To');
                      context.pushNamed(
                        'phoneNumberCA',
                        queryParams: {
                          'firstNameP': serializeParam(
                              firstNameController!.text, ParamType.String),
                          'lastNameP': serializeParam(
                              lastNameController!.text, ParamType.String),
                          'countryP':
                              serializeParam(countryValue, ParamType.String),
                          'genderP':
                              serializeParam(genderValue, ParamType.String),
                          'dateOfBrithP':
                              serializeParam(datePicked, ParamType.DateTime),
                        }.withoutNulls,
                      );
                    },
                    text: 'Create Account with Phone Number',
                    options: FFButtonOptions(
                      width: 300,
                      height: 44,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
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
