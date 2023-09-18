import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:towfix/core/constants/svsgs.dart';
import 'package:towfix/core/data/dtos/address/address.dart';
import 'package:towfix/src/map/presentation/controller/search_controller.dart';
import 'package:ui_common/ui_common.dart';

import '../../data/map_service_repository.dart';

class PlacesSearchWidget extends ConsumerWidget {
  const PlacesSearchWidget({required this.query, super.key});

  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final placesSearchAsyncValue = ref.watch(searchPlacesProvider(query));

    final activeDestinationReader = ref.read(activeDesintationProvider);
    final activeDestinationObserver = ref.watch(activeDesintationProvider);

    final mapServiceRepo = ref.read(mapServiceRepositoryImplProvider);
    final mapServiceController =
        ref.read(mapServiceControllerProvider.notifier);

    log('Places: $query');
    return placesSearchAsyncValue.when(
        data: (asyncValue) {
          return asyncValue.fold((l) {
            return Container(
              child: Column(
                children: [
                  SizedBox(
                      height: context.mediaQuery.size.height * 0.3,
                      child: SvgPicture.asset(Svgs.locationSearch)),
                  const SizedBox(
                      height: 50,
                      width: 50,
                      child: Center(child: CircularProgressIndicator())),
                ],
              ),
            );
          }, (r) {
            return Column(
              children: [
                Text('Showing results for $query'),
                ListView.builder(
                    itemCount: r.predictions?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final prediction = r.predictions![index];

                      return Card(
                        child: ListTile(
                          onTap: () async {
                            try {
                              log('REFERENCE: ${prediction.reference}');
                              // List<Location> locations =
                              //     await locationFromAddress(
                              //         prediction!.description!);

                              // log('LOCATIONS: $locations');

                              final result = await mapServiceRepo
                                  .getGeocodingByPlaceID(prediction.reference!);

                              result.fold(
                                (l) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(l.message)));
                                },
                                (res) {
                                  log('GEOCODING2: $res');
                                  if (activeDestinationObserver ==
                                      destinations.pickUpLocation) {
                                    mapServiceController.pickUpLocation =
                                        Address.initial().copyWith(
                                            latitude: res.results!.reversed
                                                .first.geometry!.location!.lat!,
                                            longitude: res.results!.reversed
                                                .first.geometry!.location!.lng!,
                                            name: prediction.description ?? '');
                                  } else if (activeDestinationObserver ==
                                      destinations.dropOffLocation) {
                                    mapServiceController.dropOffLocation =
                                        Address.initial().copyWith(
                                            latitude: res.results!.reversed
                                                .first.geometry!.location!.lat!,
                                            longitude: res.results!.reversed
                                                .first.geometry!.location!.lng!,
                                            name: prediction.description ?? '');
                                  }
                                },
                              );
                            } catch (e) {
                              log('LOCATIONS ERROR: $e');
                            }
                          },
                          leading: const Icon(FontAwesomeIcons.locationDot),
                          title: Text(prediction.description.toString()),
                          trailing: const Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20,
                          ),
                        ),
                      );
                    })
              ],
            );
          });
        },
        error: (error, stackTrace) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: context.mediaQuery.size.height * 0.3,
                  child: SvgPicture.asset(Svgs.locationSearch)),
              const Text('Ooops, an error occured while retrieving your query'),
            ],
          );
        },
        loading: () => Column(
              children: [
                SizedBox(
                    height: context.mediaQuery.size.height * 0.3,
                    child: SvgPicture.asset(Svgs.locationSearch)),
                const SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(child: CircularProgressIndicator())),
              ],
            ));
  }
}
