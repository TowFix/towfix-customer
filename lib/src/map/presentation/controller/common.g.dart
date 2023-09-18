// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$directionsHash() => r'1c7a9c73181046a5f20eeef247a3971daf53fdfb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [directions].
@ProviderFor(directions)
const directionsProvider = DirectionsFamily();

/// See also [directions].
class DirectionsFamily
    extends Family<AsyncValue<Either<Failure, DirectionsModel>>> {
  /// See also [directions].
  const DirectionsFamily();

  /// See also [directions].
  DirectionsProvider call(
    LatLng destination,
    LatLng start,
  ) {
    return DirectionsProvider(
      destination,
      start,
    );
  }

  @override
  DirectionsProvider getProviderOverride(
    covariant DirectionsProvider provider,
  ) {
    return call(
      provider.destination,
      provider.start,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'directionsProvider';
}

/// See also [directions].
class DirectionsProvider
    extends AutoDisposeFutureProvider<Either<Failure, DirectionsModel>> {
  /// See also [directions].
  DirectionsProvider(
    LatLng destination,
    LatLng start,
  ) : this._internal(
          (ref) => directions(
            ref as DirectionsRef,
            destination,
            start,
          ),
          from: directionsProvider,
          name: r'directionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$directionsHash,
          dependencies: DirectionsFamily._dependencies,
          allTransitiveDependencies:
              DirectionsFamily._allTransitiveDependencies,
          destination: destination,
          start: start,
        );

  DirectionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.destination,
    required this.start,
  }) : super.internal();

  final LatLng destination;
  final LatLng start;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, DirectionsModel>> Function(DirectionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DirectionsProvider._internal(
        (ref) => create(ref as DirectionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        destination: destination,
        start: start,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Failure, DirectionsModel>>
      createElement() {
    return _DirectionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DirectionsProvider &&
        other.destination == destination &&
        other.start == start;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, destination.hashCode);
    hash = _SystemHash.combine(hash, start.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DirectionsRef
    on AutoDisposeFutureProviderRef<Either<Failure, DirectionsModel>> {
  /// The parameter `destination` of this provider.
  LatLng get destination;

  /// The parameter `start` of this provider.
  LatLng get start;
}

class _DirectionsProviderElement
    extends AutoDisposeFutureProviderElement<Either<Failure, DirectionsModel>>
    with DirectionsRef {
  _DirectionsProviderElement(super.provider);

  @override
  LatLng get destination => (origin as DirectionsProvider).destination;
  @override
  LatLng get start => (origin as DirectionsProvider).start;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
