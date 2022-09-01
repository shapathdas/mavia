// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoRecord> _$videoRecordSerializer = new _$VideoRecordSerializer();

class _$VideoRecordSerializer implements StructuredSerializer<VideoRecord> {
  @override
  final Iterable<Type> types = const [VideoRecord, _$VideoRecord];
  @override
  final String wireName = 'VideoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.playButtonClicked;
    if (value != null) {
      result
        ..add('playButtonClicked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aPIResponse;
    if (value != null) {
      result
        ..add('APIResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
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
  VideoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'playButtonClicked':
          result.playButtonClicked = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'APIResponse':
          result.aPIResponse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
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

class _$VideoRecord extends VideoRecord {
  @override
  final DateTime? playButtonClicked;
  @override
  final String? video;
  @override
  final int? progress;
  @override
  final String? title;
  @override
  final String? aPIResponse;
  @override
  final String? thumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideoRecord([void Function(VideoRecordBuilder)? updates]) =>
      (new VideoRecordBuilder()..update(updates))._build();

  _$VideoRecord._(
      {this.playButtonClicked,
      this.video,
      this.progress,
      this.title,
      this.aPIResponse,
      this.thumbnail,
      this.ffRef})
      : super._();

  @override
  VideoRecord rebuild(void Function(VideoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoRecordBuilder toBuilder() => new VideoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoRecord &&
        playButtonClicked == other.playButtonClicked &&
        video == other.video &&
        progress == other.progress &&
        title == other.title &&
        aPIResponse == other.aPIResponse &&
        thumbnail == other.thumbnail &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, playButtonClicked.hashCode), video.hashCode),
                        progress.hashCode),
                    title.hashCode),
                aPIResponse.hashCode),
            thumbnail.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoRecord')
          ..add('playButtonClicked', playButtonClicked)
          ..add('video', video)
          ..add('progress', progress)
          ..add('title', title)
          ..add('aPIResponse', aPIResponse)
          ..add('thumbnail', thumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideoRecordBuilder implements Builder<VideoRecord, VideoRecordBuilder> {
  _$VideoRecord? _$v;

  DateTime? _playButtonClicked;
  DateTime? get playButtonClicked => _$this._playButtonClicked;
  set playButtonClicked(DateTime? playButtonClicked) =>
      _$this._playButtonClicked = playButtonClicked;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _aPIResponse;
  String? get aPIResponse => _$this._aPIResponse;
  set aPIResponse(String? aPIResponse) => _$this._aPIResponse = aPIResponse;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideoRecordBuilder() {
    VideoRecord._initializeBuilder(this);
  }

  VideoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playButtonClicked = $v.playButtonClicked;
      _video = $v.video;
      _progress = $v.progress;
      _title = $v.title;
      _aPIResponse = $v.aPIResponse;
      _thumbnail = $v.thumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoRecord;
  }

  @override
  void update(void Function(VideoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoRecord build() => _build();

  _$VideoRecord _build() {
    final _$result = _$v ??
        new _$VideoRecord._(
            playButtonClicked: playButtonClicked,
            video: video,
            progress: progress,
            title: title,
            aPIResponse: aPIResponse,
            thumbnail: thumbnail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
