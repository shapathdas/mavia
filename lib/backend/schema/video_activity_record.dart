import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_activity_record.g.dart';

abstract class VideoActivityRecord
    implements Built<VideoActivityRecord, VideoActivityRecordBuilder> {
  static Serializer<VideoActivityRecord> get serializer =>
      _$videoActivityRecordSerializer;

  @BuiltValueField(wireName: 'usr_ref')
  DocumentReference? get usrRef;

  DateTime? get start;

  DateTime? get end;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(VideoActivityRecordBuilder builder) => builder;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('videoActivity')
          : FirebaseFirestore.instance.collectionGroup('videoActivity');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('videoActivity').doc();

  static Stream<VideoActivityRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideoActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideoActivityRecord._();
  factory VideoActivityRecord(
          [void Function(VideoActivityRecordBuilder) updates]) =
      _$VideoActivityRecord;

  static VideoActivityRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideoActivityRecordData({
  DocumentReference? usrRef,
  DateTime? start,
  DateTime? end,
}) {
  final firestoreData = serializers.toFirestore(
    VideoActivityRecord.serializer,
    VideoActivityRecord(
      (v) => v
        ..usrRef = usrRef
        ..start = start
        ..end = end,
    ),
  );

  return firestoreData;
}
