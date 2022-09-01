import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'music_record.g.dart';

abstract class MusicRecord implements Built<MusicRecord, MusicRecordBuilder> {
  static Serializer<MusicRecord> get serializer => _$musicRecordSerializer;

  double? get streamtime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MusicRecordBuilder builder) =>
      builder..streamtime = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('music');

  static Stream<MusicRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MusicRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MusicRecord._();
  factory MusicRecord([void Function(MusicRecordBuilder) updates]) =
      _$MusicRecord;

  static MusicRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMusicRecordData({
  double? streamtime,
}) {
  final firestoreData = serializers.toFirestore(
    MusicRecord.serializer,
    MusicRecord(
      (m) => m..streamtime = streamtime,
    ),
  );

  return firestoreData;
}
