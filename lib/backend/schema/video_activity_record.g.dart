// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_activity_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoActivityRecord> _$videoActivityRecordSerializer =
    new _$VideoActivityRecordSerializer();

class _$VideoActivityRecordSerializer
    implements StructuredSerializer<VideoActivityRecord> {
  @override
  final Iterable<Type> types = const [
    VideoActivityRecord,
    _$VideoActivityRecord
  ];
  @override
  final String wireName = 'VideoActivityRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VideoActivityRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.usrRef;
    if (value != null) {
      result
        ..add('usr_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VideoActivityRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoActivityRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usr_ref':
          result.usrRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VideoActivityRecord extends VideoActivityRecord {
  @override
  final DocumentReference<Object?>? usrRef;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideoActivityRecord(
          [void Function(VideoActivityRecordBuilder)? updates]) =>
      (new VideoActivityRecordBuilder()..update(updates))._build();

  _$VideoActivityRecord._({this.usrRef, this.start, this.end, this.ffRef})
      : super._();

  @override
  VideoActivityRecord rebuild(
          void Function(VideoActivityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoActivityRecordBuilder toBuilder() =>
      new VideoActivityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoActivityRecord &&
        usrRef == other.usrRef &&
        start == other.start &&
        end == other.end &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, usrRef.hashCode), start.hashCode), end.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoActivityRecord')
          ..add('usrRef', usrRef)
          ..add('start', start)
          ..add('end', end)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideoActivityRecordBuilder
    implements Builder<VideoActivityRecord, VideoActivityRecordBuilder> {
  _$VideoActivityRecord? _$v;

  DocumentReference<Object?>? _usrRef;
  DocumentReference<Object?>? get usrRef => _$this._usrRef;
  set usrRef(DocumentReference<Object?>? usrRef) => _$this._usrRef = usrRef;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideoActivityRecordBuilder() {
    VideoActivityRecord._initializeBuilder(this);
  }

  VideoActivityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usrRef = $v.usrRef;
      _start = $v.start;
      _end = $v.end;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoActivityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoActivityRecord;
  }

  @override
  void update(void Function(VideoActivityRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoActivityRecord build() => _build();

  _$VideoActivityRecord _build() {
    final _$result = _$v ??
        new _$VideoActivityRecord._(
            usrRef: usrRef, start: start, end: end, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
