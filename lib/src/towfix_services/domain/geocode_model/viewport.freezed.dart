// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Viewport _$ViewportFromJson(Map<String, dynamic> json) {
  return _Viewport.fromJson(json);
}

/// @nodoc
mixin _$Viewport {
  Northeast? get northeast => throw _privateConstructorUsedError;
  Southwest? get southwest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewportCopyWith<Viewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewportCopyWith<$Res> {
  factory $ViewportCopyWith(Viewport value, $Res Function(Viewport) then) =
      _$ViewportCopyWithImpl<$Res, Viewport>;
  @useResult
  $Res call({Northeast? northeast, Southwest? southwest});

  $NortheastCopyWith<$Res>? get northeast;
  $SouthwestCopyWith<$Res>? get southwest;
}

/// @nodoc
class _$ViewportCopyWithImpl<$Res, $Val extends Viewport>
    implements $ViewportCopyWith<$Res> {
  _$ViewportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_value.copyWith(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as Northeast?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as Southwest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NortheastCopyWith<$Res>? get northeast {
    if (_value.northeast == null) {
      return null;
    }

    return $NortheastCopyWith<$Res>(_value.northeast!, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SouthwestCopyWith<$Res>? get southwest {
    if (_value.southwest == null) {
      return null;
    }

    return $SouthwestCopyWith<$Res>(_value.southwest!, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ViewportCopyWith<$Res> implements $ViewportCopyWith<$Res> {
  factory _$$_ViewportCopyWith(
          _$_Viewport value, $Res Function(_$_Viewport) then) =
      __$$_ViewportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Northeast? northeast, Southwest? southwest});

  @override
  $NortheastCopyWith<$Res>? get northeast;
  @override
  $SouthwestCopyWith<$Res>? get southwest;
}

/// @nodoc
class __$$_ViewportCopyWithImpl<$Res>
    extends _$ViewportCopyWithImpl<$Res, _$_Viewport>
    implements _$$_ViewportCopyWith<$Res> {
  __$$_ViewportCopyWithImpl(
      _$_Viewport _value, $Res Function(_$_Viewport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_$_Viewport(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as Northeast?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as Southwest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Viewport implements _Viewport {
  _$_Viewport({this.northeast, this.southwest});

  factory _$_Viewport.fromJson(Map<String, dynamic> json) =>
      _$$_ViewportFromJson(json);

  @override
  final Northeast? northeast;
  @override
  final Southwest? southwest;

  @override
  String toString() {
    return 'Viewport(northeast: $northeast, southwest: $southwest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Viewport &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewportCopyWith<_$_Viewport> get copyWith =>
      __$$_ViewportCopyWithImpl<_$_Viewport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewportToJson(
      this,
    );
  }
}

abstract class _Viewport implements Viewport {
  factory _Viewport({final Northeast? northeast, final Southwest? southwest}) =
      _$_Viewport;

  factory _Viewport.fromJson(Map<String, dynamic> json) = _$_Viewport.fromJson;

  @override
  Northeast? get northeast;
  @override
  Southwest? get southwest;
  @override
  @JsonKey(ignore: true)
  _$$_ViewportCopyWith<_$_Viewport> get copyWith =>
      throw _privateConstructorUsedError;
}
