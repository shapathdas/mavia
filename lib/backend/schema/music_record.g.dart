// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MusicRecord> _$musicRecordSerializer = new _$MusicRecordSerializer();

class _$MusicRecordSerializer implements StructuredSerializer<MusicRecord> {
  @override
  final Iterable<Type> types = const [MusicRecord, _$MusicRecord];
  @override
  final String wireName = 'MusicRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MusicRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.streamtime;
    if (value != null) {
      result
        ..add('streamtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  MusicRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MusicRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'streamtime':
          result.streamtime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$MusicRecord extends MusicRecord {
  @override
  final double? streamtime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MusicRecord([void Function(MusicRecordBuilder)? updates]) =>
      (new MusicRecordBuilder()..update(updates))._build();

  _$MusicRecord._({this.streamtime, this.ffRef}) : super._();

  @override
  MusicRecord rebuild(void Function(MusicRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MusicRecordBuilder toBuilder() => new MusicRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MusicRecord &&
        streamtime == other.streamtime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, streamtime.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MusicRecord')
          ..add('streamtime', streamtime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MusicRecordBuilder implements Builder<MusicRecord, MusicRecordBuilder> {
  _$MusicRecord? _$v;

  double? _streamtime;
  double? get streamtime => _$this._streamtime;
  set streamtime(double? streamtime) => _$this._streamtime = streamtime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MusicRecordBuilder() {
    MusicRecord._initializeBuilder(this);
  }

  MusicRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamtime = $v.streamtime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MusicRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MusicRecord;
  }

  @override
  void update(void Function(MusicRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MusicRecord build() => _build();

  _$MusicRecord _build() {
    final _$result =
        _$v ?? new _$MusicRecord._(streamtime: streamtime, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
