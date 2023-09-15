import 'package:freezed_annotation/freezed_annotation.dart';

import '../profile/profile.dart';

part 'vehicle.g.dart';
part 'vehicle.freezed.dart';

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    required String id,
    required String brand,
    required String model,
    required String color,
    required String numberPlate,
    required String extraInfo,
    required Profile user,
    required String image,
  }) = _Vehicle;

  /// Initial state with dummy data
  factory Vehicle.initial() => Vehicle(
      id: '',
      brand: '',
      color: '',
      extraInfo: '',
      model: '',
      numberPlate: '',
      image: '',
      user: Profile.initial());

  /// Convert from json to model
  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  const Vehicle._();
}
