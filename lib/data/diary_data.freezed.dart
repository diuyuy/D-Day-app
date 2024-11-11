// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiaryData {
  String get title => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Create a copy of DiaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiaryDataCopyWith<DiaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryDataCopyWith<$Res> {
  factory $DiaryDataCopyWith(DiaryData value, $Res Function(DiaryData) then) =
      _$DiaryDataCopyWithImpl<$Res, DiaryData>;
  @useResult
  $Res call({String title, DateTime dateTime, String content});
}

/// @nodoc
class _$DiaryDataCopyWithImpl<$Res, $Val extends DiaryData>
    implements $DiaryDataCopyWith<$Res> {
  _$DiaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? dateTime = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryDataImplCopyWith<$Res>
    implements $DiaryDataCopyWith<$Res> {
  factory _$$DiaryDataImplCopyWith(
          _$DiaryDataImpl value, $Res Function(_$DiaryDataImpl) then) =
      __$$DiaryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime dateTime, String content});
}

/// @nodoc
class __$$DiaryDataImplCopyWithImpl<$Res>
    extends _$DiaryDataCopyWithImpl<$Res, _$DiaryDataImpl>
    implements _$$DiaryDataImplCopyWith<$Res> {
  __$$DiaryDataImplCopyWithImpl(
      _$DiaryDataImpl _value, $Res Function(_$DiaryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? dateTime = null,
    Object? content = null,
  }) {
    return _then(_$DiaryDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DiaryDataImpl implements _DiaryData {
  _$DiaryDataImpl(
      {required this.title, required this.dateTime, required this.content});

  @override
  final String title;
  @override
  final DateTime dateTime;
  @override
  final String content;

  @override
  String toString() {
    return 'DiaryData(title: $title, dateTime: $dateTime, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, dateTime, content);

  /// Create a copy of DiaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryDataImplCopyWith<_$DiaryDataImpl> get copyWith =>
      __$$DiaryDataImplCopyWithImpl<_$DiaryDataImpl>(this, _$identity);
}

abstract class _DiaryData implements DiaryData {
  factory _DiaryData(
      {required final String title,
      required final DateTime dateTime,
      required final String content}) = _$DiaryDataImpl;

  @override
  String get title;
  @override
  DateTime get dateTime;
  @override
  String get content;

  /// Create a copy of DiaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiaryDataImplCopyWith<_$DiaryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
