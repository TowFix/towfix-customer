// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodingResult _$GeocodingResultFromJson(Map<String, dynamic> json) {
  return _GeocodingResult.fromJson(json);
}

/// @nodoc
mixin _$GeocodingResult {
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodingResultCopyWith<GeocodingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodingResultCopyWith<$Res> {
  factory $GeocodingResultCopyWith(
          GeocodingResult value, $Res Function(GeocodingResult) then) =
      _$GeocodingResultCopyWithImpl<$Res, GeocodingResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      Geometry? geometry,
      @JsonKey(name: 'place_id') String? placeId,
      List<String>? types});

  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$GeocodingResultCopyWithImpl<$Res, $Val extends GeocodingResult>
    implements $GeocodingResultCopyWith<$Res> {
  _$GeocodingResultCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
abstract class _$$_GeocodingResultCopyWith<$Res>
    implements $GeocodingResultCopyWith<$Res> {
  factory _$$_GeocodingResultCopyWith(
          _$_GeocodingResult value, $Res Function(_$_GeocodingResult) then) =
      __$$_GeocodingResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      Geometry? geometry,
      @JsonKey(name: 'place_id') String? placeId,
      List<String>? types});

  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$_GeocodingResultCopyWithImpl<$Res>
    extends _$GeocodingResultCopyWithImpl<$Res, _$_GeocodingResult>
    implements _$$_GeocodingResultCopyWith<$Res> {
  __$$_GeocodingResultCopyWithImpl(
      _$_GeocodingResult _value, $Res Function(_$_GeocodingResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
    Object? placeId = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_GeocodingResult(
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
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodingResult implements _GeocodingResult {
  _$_GeocodingResult(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') this.formattedAddress,
      this.geometry,
      @JsonKey(name: 'place_id') this.placeId,
      final List<String>? types})
      : _addressComponents = addressComponents,
        _types = types;

  factory _$_GeocodingResult.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodingResultFromJson(json);

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
    return 'GeocodingResult(addressComponents: $addressComponents, formattedAddress: $formattedAddress, geometry: $geometry, placeId: $placeId, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeocodingResult &&
            const DeepCollectionEquality()
                .equals(other._addressComponents, _addressComponents) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
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
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeocodingResultCopyWith<_$_GeocodingResult> get copyWith =>
      __$$_GeocodingResultCopyWithImpl<_$_GeocodingResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodingResultToJson(
      this,
    );
  }
}

abstract class _GeocodingResult implements GeocodingResult {
  factory _GeocodingResult(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponents,
      @JsonKey(name: 'formatted_address') final String? formattedAddress,
      final Geometry? geometry,
      @JsonKey(name: 'place_id') final String? placeId,
      final List<String>? types}) = _$_GeocodingResult;

  factory _GeocodingResult.fromJson(Map<String, dynamic> json) =
      _$_GeocodingResult.fromJson;

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
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$_GeocodingResultCopyWith<_$_GeocodingResult> get copyWith =>
      throw _privateConstructorUsedError;
}
