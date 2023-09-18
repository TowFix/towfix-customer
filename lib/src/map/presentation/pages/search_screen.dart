import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:towfix/core/data/dtos/address/address.dart';
import 'package:towfix/src/map/presentation/controller/map_service_state.dart';
import 'package:towfix/src/map/presentation/controller/search_controller.dart';
import 'package:towfix/src/map/presentation/pages/select_location_map.dart';
import 'package:towfix/src/map/presentation/pages/select_tow_truck_page.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../core/application/app_router/app_router.dart';
import '../widgets/places_search_widget.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final searchQueryProvider = StateProvider<String>((ref) => '');

  final pickUpLocationController = TextEditingController();
  final dropOffLocationController = TextEditingController();

  final FocusNode pickUpLocationFocus = FocusNode();
  final FocusNode dropOffLocationFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);
    final searchReader = ref.read(searchQueryProvider.notifier);
    final activeDestinationReader =
        ref.read(activeDesintationProvider.notifier);
    final activeDestinationObserver = ref.watch(activeDesintationProvider);

    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    final mapServiceControllerObserver =
        ref.watch(mapServiceControllerProvider);

    ref.listen<MapServiceState>(mapServiceControllerProvider, (previous, next) {
      log('\n------------Previous\n $previous\n-------------\n');
      log('\n------------Next\n $next\n-------------\n');
      if (activeDestinationObserver == destinations.pickUpLocation) {
        pickUpLocationController.text = next.pickUpLocation?.name ?? '';
        pickUpLocationFocus.nextFocus();
        searchReader.state = '';
        activeDestinationReader.state = destinations.dropOffLocation;
      } else if (activeDestinationObserver == destinations.dropOffLocation) {
        dropOffLocationController.text = next.dropOffLocation?.name ?? '';
        // pickUpLocationFocus.nextFocus();
        searchReader.state = '';
      }

      // todo: move to next screen when fields are populated
      if (dropOffLocationController.text.isNotEmpty &&
          pickUpLocationController.text.isNotEmpty) {
        context.goNamed(AppRoute.directionsService.name);
      }
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Choose Location',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: const Column(
                    children: [
                      Icon(FontAwesomeIcons.location),
                      Dash(),
                      Dash(),
                      Dash(),
                      Dash(),
                      Icon(FontAwesomeIcons.location),
                    ],
                  ),
                ),
                SizedBox(
                  width: context.mediaQuery.size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: context.mediaQuery.size.width * 0.75,
                            child: TextFormField(
                              controller: pickUpLocationController,
                              focusNode: pickUpLocationFocus,
                              onTap: () {
                                activeDestinationReader.state =
                                    destinations.pickUpLocation;
                              },
                              onChanged: (input) {
                                searchReader.state = input;
                              },
                              decoration: InputDecoration(
                                hintText: 'Current Location',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: const Color(0xff3b3b3b)
                                            .withOpacity(0.56)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              activeDestinationReader.state =
                                  destinations.pickUpLocation;
                              final result = await context.navigator
                                  .push(MaterialPageRoute(builder: (context) {
                                return const SelectLocationMap();
                              }));

                              if (activeDestinationObserver ==
                                  destinations.pickUpLocation) {
                                mapServiceControllerReader.pickUpLocation =
                                    result as Address;
                              } else if (activeDestinationObserver ==
                                  destinations.dropOffLocation) {
                                mapServiceControllerReader.dropOffLocation =
                                    result as Address;
                              }
                            },
                            icon: const Icon(FontAwesomeIcons.mapLocationDot),
                            color: context.primaryColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(
                            width: context.mediaQuery.size.width * 0.75,
                            child: TextFormField(
                              controller: dropOffLocationController,
                              focusNode: dropOffLocationFocus,
                              onTap: () {
                                activeDestinationReader.state =
                                    destinations.dropOffLocation;
                              },
                              onChanged: (input) {
                                searchReader.state = input;
                              },
                              decoration: InputDecoration(
                                hintText: 'Destination',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: const Color(0xff3b3b3b)
                                            .withOpacity(0.56)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              activeDestinationReader.state =
                                  destinations.dropOffLocation;
                              final result = await context.navigator
                                  .push(MaterialPageRoute(builder: (context) {
                                return const SelectLocationMap();
                              }));

                              if (activeDestinationObserver ==
                                  destinations.pickUpLocation) {
                                mapServiceControllerReader.pickUpLocation =
                                    result as Address;
                              } else if (activeDestinationObserver ==
                                  destinations.dropOffLocation) {
                                mapServiceControllerReader.dropOffLocation =
                                    result as Address;
                              }
                            },
                            icon: const Icon(FontAwesomeIcons.mapLocationDot),
                            color: context.primaryColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.black),
            const SizedBox(height: 10),
            if (searchQuery.isEmpty) const NearByMechanicShops(),
            if (searchQuery.isNotEmpty) PlacesSearchWidget(query: searchQuery)
          ],
        ),
      ),
    );
  }
}

class Dash extends StatelessWidget {
  const Dash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2),
      width: 2,
      height: 10,
      decoration: BoxDecoration(color: context.primaryColor),
    );
  }
}

class NearByMechanicShops extends StatelessWidget {
  const NearByMechanicShops({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: Text(
            'Tow to near by mechanic shop',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Divider(color: Colors.black),
        ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SelectTowTruckPage()));
              },
              leading: Icon(
                Icons.location_on,
                color: Colors.black.withOpacity(0.2),
              ),
              title: Text(
                'Mechanic Shop 1',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(
                'Mechanic Shop 1 Address',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black.withOpacity(0.2),
            );
          },
          itemCount: 3,
          shrinkWrap: true,
        ),
      ],
    );
  }
}
