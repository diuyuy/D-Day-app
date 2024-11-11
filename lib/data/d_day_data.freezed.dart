// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'd_day_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DDayData {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of DDayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DDayDataCopyWith<DDayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DDayDataCopyWith<$Res> {
  factory $DDayDataCopyWith(DDayData value, $Res Function(DDayData) then) =
      _$DDayDataCopyWithImpl<$Res, DDayData>;
  @useResult
  $Res call({DateTime dateTime, String title});
}

/// @nodoc
class _$DDayDataCopyWithImpl<$Res, $Val extends DDayData>
    implements $DDayDataCopyWith<$Res> {
  _$DDayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DDayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DDayDataImplCopyWith<$Res>
    implements $DDayDataCopyWith<$Res> {
  factory _$$DDayDataImplCopyWith(
          _$DDayDataImpl value, $Res Function(_$DDayDataImpl) then) =
      __$$DDayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, String title});
}

/// @nodoc
class __$$DDayDataImplCopyWithImpl<$Res>
    extends _$DDayDataCopyWithImpl<$Res, _$DDayDataImpl>
    implements _$$DDayDataImplCopyWith<$Res> {
  __$$DDayDataImplCopyWithImpl(
      _$DDayDataImpl _value, $Res Function(_$DDayDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DDayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? title = null,
  }) {
    return _then(_$DDayDataImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DDayDataImpl implements _DDayData {
  const _$DDayDataImpl({required this.dateTime, required this.title});

  @override
  final DateTime dateTime;
  @override
  final String title;

  @override
  String toString() {
    return 'DDayData(dateTime: $dateTime, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DDayDataImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, title);

  /// Create a copy of DDayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DDayDataImplCopyWith<_$DDayDataImpl> get copyWith =>
      __$$DDayDataImplCopyWithImpl<_$DDayDataImpl>(this, _$identity);
}

abstract class _DDayData implements DDayData {
  const factory _DDayData(
      {required final DateTime dateTime,
      required final String title}) = _$DDayDataImpl;

  @override
  DateTime get dateTime;
  @override
  String get title;

  /// Create a copy of DDayData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DDayDataImplCopyWith<_$DDayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
