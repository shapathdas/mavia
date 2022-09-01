// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostRecord> _$postRecordSerializer = new _$PostRecordSerializer();

class _$PostRecordSerializer implements StructuredSerializer<PostRecord> {
  @override
  final Iterable<Type> types = const [PostRecord, _$PostRecord];
  @override
  final String wireName = 'PostRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
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
  PostRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'photo':
          result.photo = serializers.deserialize(value,
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

class _$PostRecord extends PostRecord {
  @override
  final String? photo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostRecord([void Function(PostRecordBuilder)? updates]) =>
      (new PostRecordBuilder()..update(updates))._build();

  _$PostRecord._({this.photo, this.ffRef}) : super._();

  @override
  PostRecord rebuild(void Function(PostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostRecordBuilder toBuilder() => new PostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostRecord && photo == other.photo && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, photo.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostRecord')
          ..add('photo', photo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostRecordBuilder implements Builder<PostRecord, PostRecordBuilder> {
  _$PostRecord? _$v;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostRecordBuilder() {
    PostRecord._initializeBuilder(this);
  }

  PostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photo = $v.photo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostRecord;
  }

  @override
  void update(void Function(PostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostRecord build() => _build();

  _$PostRecord _build() {
    final _$result = _$v ?? new _$PostRecord._(photo: photo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
