import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_record.g.dart';

abstract class UserRecord implements Built<UserRecord, UserRecordBuilder> {
  static Serializer<UserRecord> get serializer => _$userRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'first_Name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_Name')
  String? get lastName;

  @BuiltValueField(wireName: 'AADHAR')
  int? get aadhar;

  @BuiltValueField(wireName: 'date_Of_Birth')
  DateTime? get dateOfBirth;

  String? get country;

  String? get gender;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  int? get bottomSheet;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserRecordBuilder builder) => builder
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..firstName = ''
    ..lastName = ''
    ..aadhar = 0
    ..country = ''
    ..gender = ''
    ..displayName = ''
    ..bottomSheet = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserRecord._();
  factory UserRecord([void Function(UserRecordBuilder) updates]) = _$UserRecord;

  static UserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? lastName,
  int? aadhar,
  DateTime? dateOfBirth,
  String? country,
  String? gender,
  String? displayName,
  int? bottomSheet,
}) {
  final firestoreData = serializers.toFirestore(
    UserRecord.serializer,
    UserRecord(
      (u) => u
        ..email = email
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..firstName = firstName
        ..lastName = lastName
        ..aadhar = aadhar
        ..dateOfBirth = dateOfBirth
        ..country = country
        ..gender = gender
        ..displayName = displayName
        ..bottomSheet = bottomSheet,
    ),
  );

  return firestoreData;
}
