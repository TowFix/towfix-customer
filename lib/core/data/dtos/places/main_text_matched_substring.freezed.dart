// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_text_matched_substring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainTextMatchedSubstring _$MainTextMatchedSubstringFromJson(
    Map<String, dynamic> json) {
  return _MainTextMatchedSubstring.fromJson(json);
}

/// @nodoc
mixin _$MainTextMatchedSubstring {
  int? get length => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainTextMatchedSubstringCopyWith<MainTextMatchedSubstring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTextMatchedSubstringCopyWith<$Res> {
  factory $MainTextMatchedSubstringCopyWith(MainTextMatchedSubstring value,
          $Res Function(MainTextMatchedSubstring) then) =
      _$MainTextMatchedSubstringCopyWithImpl<$Res, MainTextMatchedSubstring>;
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class _$MainTextMatchedSubstringCopyWithImpl<$Res,
        $Val extends MainTextMatchedSubstring>
    implements $MainTextMatchedSubstringCopyWith<$Res> {
  _$MainTextMatchedSubstringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainTextMatchedSubstringCopyWith<$Res>
    implements $MainTextMatchedSubstringCopyWith<$Res> {
  factory _$$_MainTextMatchedSubstringCopyWith(
          _$_MainTextMatchedSubstring value,
          $Res Function(_$_MainTextMatchedSubstring) then) =
      __$$_MainTextMatchedSubstringCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class __$$_MainTextMatchedSubstringCopyWithImpl<$Res>
    extends _$MainTextMatchedSubstringCopyWithImpl<$Res,
        _$_MainTextMatchedSubstring>
    implements _$$_MainTextMatchedSubstringCopyWith<$Res> {
  __$$_MainTextMatchedSubstringCopyWithImpl(_$_MainTextMatchedSubstring _value,
      $Res Function(_$_MainTextMatchedSubstring) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_MainTextMatchedSubstring(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainTextMatchedSubstring implements _MainTextMatchedSubstring {
  _$_MainTextMatchedSubstring({this.length, this.offset});

  factory _$_MainTextMatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$$_MainTextMatchedSubstringFromJson(json);

  @override
  final int? length;
  @override
  final int? offset;

  @override
  String toString() {
    return 'MainTextMatchedSubstring(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainTextMatchedSubstring &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainTextMatchedSubstringCopyWith<_$_MainTextMatchedSubstring>
      get copyWith => __$$_MainTextMatchedSubstringCopyWithImpl<
          _$_MainTextMatchedSubstring>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainTextMatchedSubstringToJson(
      this,
    );
  }
}

abstract class _MainTextMatchedSubstring implements MainTextMatchedSubstring {
  factory _MainTextMatchedSubstring({final int? length, final int? offset}) =
      _$_MainTextMatchedSubstring;

  factory _MainTextMatchedSubstring.fromJson(Map<String, dynamic> json) =
      _$_MainTextMatchedSubstring.fromJson;

  @override
  int? get length;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$_MainTextMatchedSubstringCopyWith<_$_MainTextMatchedSubstring>
      get copyWith => throw _privateConstructorUsedError;
}
