// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serviceRequestHash() => r'18be8c1efa184aea247fef62e8d0c12f9901ea0a';

/// See also [serviceRequest].
@ProviderFor(serviceRequest)
final serviceRequestProvider =
    AutoDisposeStreamProvider<Either<Failure, List<ServiceRequest>>>.internal(
  serviceRequest,
  name: r'serviceRequestProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$serviceRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ServiceRequestRef
    = AutoDisposeStreamProviderRef<Either<Failure, List<ServiceRequest>>>;
String _$vehiclesHash() => r'415d11a7eb21f4326f87d862d61cdbed79e8e9fa';

/// See also [vehicles].
@ProviderFor(vehicles)
final vehiclesProvider = AutoDisposeStreamProvider<List<Vehicle>>.internal(
  vehicles,
  name: r'vehiclesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$vehiclesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef VehiclesRef = AutoDisposeStreamProviderRef<List<Vehicle>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
