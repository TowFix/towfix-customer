// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchPlacesHash() => r'eed1edfbd0bf9f5c1f5928110364aef72a130730';

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

/// See also [searchPlaces].
@ProviderFor(searchPlaces)
const searchPlacesProvider = SearchPlacesFamily();

/// See also [searchPlaces].
class SearchPlacesFamily extends Family<AsyncValue<Either<Failure, Places>>> {
  /// See also [searchPlaces].
  const SearchPlacesFamily();

  /// See also [searchPlaces].
  SearchPlacesProvider call(
    String query,
  ) {
    return SearchPlacesProvider(
      query,
    );
  }

  @override
  SearchPlacesProvider getProviderOverride(
    covariant SearchPlacesProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'searchPlacesProvider';
}

/// See also [searchPlaces].
class SearchPlacesProvider extends FutureProvider<Either<Failure, Places>> {
  /// See also [searchPlaces].
  SearchPlacesProvider(
    String query,
  ) : this._internal(
          (ref) => searchPlaces(
            ref as SearchPlacesRef,
            query,
          ),
          from: searchPlacesProvider,
          name: r'searchPlacesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchPlacesHash,
          dependencies: SearchPlacesFamily._dependencies,
          allTransitiveDependencies:
              SearchPlacesFamily._allTransitiveDependencies,
          query: query,
        );

  SearchPlacesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, Places>> Function(SearchPlacesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchPlacesProvider._internal(
        (ref) => create(ref as SearchPlacesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  FutureProviderElement<Either<Failure, Places>> createElement() {
    return _SearchPlacesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchPlacesProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchPlacesRef on FutureProviderRef<Either<Failure, Places>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchPlacesProviderElement
    extends FutureProviderElement<Either<Failure, Places>>
    with SearchPlacesRef {
  _SearchPlacesProviderElement(super.provider);

  @override
  String get query => (origin as SearchPlacesProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
