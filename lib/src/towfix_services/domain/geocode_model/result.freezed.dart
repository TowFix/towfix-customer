// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodeResult _$GeocodeResultFromJson(Map<String, dynamic> json) {
  return _GeocodeResult.fromJson(json);
}

/// @nodoc
mixin _$GeocodeResult {
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plus_code')
  PlusCode? get plusCode => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodeResultCopyWith<GeocodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodeResultCopyWith<$Res> {
  factory $GeocodeResultCopyWith(
          GeocodeResult value, $Res Function(GeocodeResult) then) =
      _$GeocodeResultCopyWithImpl<$Res, GeocodeResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      Geometry? geometry,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'plus_code') PlusCode? plusCode,
      List<String>? types});

  $GeometryCopyWith<$Res>? get geometry;
  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class _$GeocodeResultCopyWithImpl<$Res, $Val extends GeocodeResult>
    implements $GeocodeResultCopyWith<$Res> {
  _$GeocodeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      addressComponents: freezed == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlusCodeCopyWith<$Res>? get plusCode {
    if (_value.plusCode == null) {
      return null;
    }

    return $PlusCodeCopyWith<$Res>(_value.plusCode!, (value) {
      return _then(_value.copyWith(plusCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeocodeResultCopyWith<$Res>
    implements $GeocodeResultCopyWith<$Res> {
  factory _$$_GeocodeResultCopyWith(
          _$_GeocodeResult value, $Res Function(_$_GeocodeResult) then) =
      __$$_GeocodeResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      Geometry? geometry,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'plus_code') PlusCode? plusCode,
      List<String>? types});

  @override
  $GeometryCopyWith<$Res>? get geometry;
  @override
  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class __$$_GeocodeResultCopyWithImpl<$Res>
    extends _$GeocodeResultCopyWithImpl<$Res, _$_GeocodeResult>
    implements _$$_GeocodeResultCopyWith<$Res> {
  __$$_GeocodeResultCopyWithImpl(
      _$_GeocodeResult _value, $Res Function(_$_GeocodeResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_GeocodeResult(
      addressComponents: freezed == addressComponents
          ? _value._addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodeResult implements _GeocodeResult {
  _$_GeocodeResult(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') this.formattedAddress,
      this.geometry,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'plus_code') this.plusCode,
      final List<String>? types})
      : _addressComponents = addressComponents,
        _types = types;

  factory _$_GeocodeResult.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodeResultFromJson(json);

  final List<AddressComponent>? _addressComponents;
  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents {
    final value = _addressComponents;
    if (value == null) return null;
    if (_addressComponents is EqualUnmodifiableListView)
      return _addressComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'formatted_address')
  final String? formattedAddress;
  @override
  final Geometry? geometry;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'plus_code')
  final PlusCode? plusCode;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GeocodeResult(addressComponents: $addressComponents, formattedAddress: $formattedAddress, geometry: $geometry, placeId: $placeId, plusCode: $plusCode, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeocodeResult &&
            const DeepCollectionEquality()
                .equals(other._addressComponents, _addressComponents) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addressComponents),
      formattedAddress,
      geometry,
      placeId,
      plusCode,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeocodeResultCopyWith<_$_GeocodeResult> get copyWith =>
      __$$_GeocodeResultCopyWithImpl<_$_GeocodeResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodeResultToJson(
      this,
    );
  }
}

abstract class _GeocodeResult implements GeocodeResult {
  factory _GeocodeResult(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') final String? formattedAddress,
      final Geometry? geometry,
      @JsonKey(name: 'place_id') final String? placeId,
      @JsonKey(name: 'plus_code') final PlusCode? plusCode,
      final List<String>? types}) = _$_GeocodeResult;

  factory _GeocodeResult.fromJson(Map<String, dynamic> json) =
      _$_GeocodeResult.fromJson;

  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents;
  @override
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress;
  @override
  Geometry? get geometry;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  @JsonKey(name: 'plus_code')
  PlusCode? get plusCode;
  @override
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$_GeocodeResultCopyWith<_$_GeocodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}
