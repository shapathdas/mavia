// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_activity_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyActivityRecord> _$myActivityRecordSerializer =
    new _$MyActivityRecordSerializer();

class _$MyActivityRecordSerializer
    implements StructuredSerializer<MyActivityRecord> {
  @override
  final Iterable<Type> types = const [MyActivityRecord, _$MyActivityRecord];
  @override
  final String wireName = 'MyActivityRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyActivityRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.vRef;
    if (value != null) {
      result
        ..add('v_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.sTime;
    if (value != null) {
      result
        ..add('sTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.eTime;
    if (value != null) {
      result
        ..add('eTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.videolink;
    if (value != null) {
      result
        ..add('videolink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mTitle;
    if (value != null) {
      result
        ..add('m_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  MyActivityRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyActivityRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'v_ref':
          result.vRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'sTime':
          result.sTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'eTime':
          result.eTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'videolink':
          result.videolink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'm_title':
          result.mTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$MyActivityRecord extends MyActivityRecord {
  @override
  final DocumentReference<Object?>? vRef;
  @override
  final DateTime? sTime;
  @override
  final DateTime? eTime;
  @override
  final String? videolink;
  @override
  final String? mTitle;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MyActivityRecord(
          [void Function(MyActivityRecordBuilder)? updates]) =>
      (new MyActivityRecordBuilder()..update(updates))._build();

  _$MyActivityRecord._(
      {this.vRef,
      this.sTime,
      this.eTime,
      this.videolink,
      this.mTitle,
      this.ffRef})
      : super._();

  @override
  MyActivityRecord rebuild(void Function(MyActivityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyActivityRecordBuilder toBuilder() =>
      new MyActivityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyActivityRecord &&
        vRef == other.vRef &&
        sTime == other.sTime &&
        eTime == other.eTime &&
        videolink == other.videolink &&
        mTitle == other.mTitle &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, vRef.hashCode), sTime.hashCode), eTime.hashCode),
                videolink.hashCode),
            mTitle.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyActivityRecord')
          ..add('vRef', vRef)
          ..add('sTime', sTime)
          ..add('eTime', eTime)
          ..add('videolink', videolink)
          ..add('mTitle', mTitle)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MyActivityRecordBuilder
    implements Builder<MyActivityRecord, MyActivityRecordBuilder> {
  _$MyActivityRecord? _$v;

  DocumentReference<Object?>? _vRef;
  DocumentReference<Object?>? get vRef => _$this._vRef;
  set vRef(DocumentReference<Object?>? vRef) => _$this._vRef = vRef;

  DateTime? _sTime;
  DateTime? get sTime => _$this._sTime;
  set sTime(DateTime? sTime) => _$this._sTime = sTime;

  DateTime? _eTime;
  DateTime? get eTime => _$this._eTime;
  set eTime(DateTime? eTime) => _$this._eTime = eTime;

  String? _videolink;
  String? get videolink => _$this._videolink;
  set videolink(String? videolink) => _$this._videolink = videolink;

  String? _mTitle;
  String? get mTitle => _$this._mTitle;
  set mTitle(String? mTitle) => _$this._mTitle = mTitle;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MyActivityRecordBuilder() {
    MyActivityRecord._initializeBuilder(this);
  }

  MyActivityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vRef = $v.vRef;
      _sTime = $v.sTime;
      _eTime = $v.eTime;
      _videolink = $v.videolink;
      _mTitle = $v.mTitle;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyActivityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyActivityRecord;
  }

  @override
  void update(void Function(MyActivityRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyActivityRecord build() => _build();

  _$MyActivityRecord _build() {
    final _$result = _$v ??
        new _$MyActivityRecord._(
            vRef: vRef,
            sTime: sTime,
            eTime: eTime,
            videolink: videolink,
            mTitle: mTitle,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
