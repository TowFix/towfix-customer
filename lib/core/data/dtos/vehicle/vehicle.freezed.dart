// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  String get id => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get numberPlate => throw _privateConstructorUsedError;
  String get extraInfo => throw _privateConstructorUsedError;
  Profile get user => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call(
      {String id,
      String brand,
      String model,
      String color,
      String numberPlate,
      String extraInfo,
      Profile user,
      String image});

  $ProfileCopyWith<$Res> get user;
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? model = null,
    Object? color = null,
    Object? numberPlate = null,
    Object? extraInfo = null,
    Object? user = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      numberPlate: null == numberPlate
          ? _value.numberPlate
          : numberPlate // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get user {
    return $ProfileCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$_VehicleCopyWith(
          _$_Vehicle value, $Res Function(_$_Vehicle) then) =
      __$$_VehicleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String brand,
      String model,
      String color,
      String numberPlate,
      String extraInfo,
      Profile user,
      String image});

  @override
  $ProfileCopyWith<$Res> get user;
}

/// @nodoc
class __$$_VehicleCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$_Vehicle>
    implements _$$_VehicleCopyWith<$Res> {
  __$$_VehicleCopyWithImpl(_$_Vehicle _value, $Res Function(_$_Vehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? model = null,
    Object? color = null,
    Object? numberPlate = null,
    Object? extraInfo = null,
    Object? user = null,
    Object? image = null,
  }) {
    return _then(_$_Vehicle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      numberPlate: null == numberPlate
          ? _value.numberPlate
          : numberPlate // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vehicle extends _Vehicle {
  const _$_Vehicle(
      {required this.id,
      required this.brand,
      required this.model,
      required this.color,
      required this.numberPlate,
      required this.extraInfo,
      required this.user,
      required this.image})
      : super._();

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleFromJson(json);

  @override
  final String id;
  @override
  final String brand;
  @override
  final String model;
  @override
  final String color;
  @override
  final String numberPlate;
  @override
  final String extraInfo;
  @override
  final Profile user;
  @override
  final String image;

  @override
  String toString() {
    return 'Vehicle(id: $id, brand: $brand, model: $model, color: $color, numberPlate: $numberPlate, extraInfo: $extraInfo, user: $user, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vehicle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.numberPlate, numberPlate) ||
                other.numberPlate == numberPlate) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, brand, model, color,
      numberPlate, extraInfo, user, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      __$$_VehicleCopyWithImpl<_$_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleToJson(
      this,
    );
  }
}

abstract class _Vehicle extends Vehicle {
  const factory _Vehicle(
      {required final String id,
      required final String brand,
      required final String model,
      required final String color,
      required final String numberPlate,
      required final String extraInfo,
      required final Profile user,
      required final String image}) = _$_Vehicle;
  const _Vehicle._() : super._();

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  String get id;
  @override
  String get brand;
  @override
  String get model;
  @override
  String get color;
  @override
  String get numberPlate;
  @override
  String get extraInfo;
  @override
  Profile get user;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      throw _privateConstructorUsedError;
}
