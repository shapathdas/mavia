import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_activity_record.g.dart';

abstract class MyActivityRecord
    implements Built<MyActivityRecord, MyActivityRecordBuilder> {
  static Serializer<MyActivityRecord> get serializer =>
      _$myActivityRecordSerializer;

  @BuiltValueField(wireName: 'v_ref')
  DocumentReference? get vRef;

  DateTime? get sTime;

  DateTime? get eTime;

  String? get videolink;

  @BuiltValueField(wireName: 'm_title')
  String? get mTitle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MyActivityRecordBuilder builder) => builder
    ..videolink = ''
    ..mTitle = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('myActivity')
          : FirebaseFirestore.instance.collectionGroup('myActivity');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('myActivity').doc();

  static Stream<MyActivityRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyActivityRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyActivityRecord._();
  factory MyActivityRecord([void Function(MyActivityRecordBuilder) updates]) =
      _$MyActivityRecord;

  static MyActivityRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyActivityRecordData({
  DocumentReference? vRef,
  DateTime? sTime,
  DateTime? eTime,
  String? videolink,
  String? mTitle,
}) {
  final firestoreData = serializers.toFirestore(
    MyActivityRecord.serializer,
    MyActivityRecord(
      (m) => m
        ..vRef = vRef
        ..sTime = sTime
        ..eTime = eTime
        ..videolink = videolink
        ..mTitle = mTitle,
    ),
  );

  return firestoreData;
}
