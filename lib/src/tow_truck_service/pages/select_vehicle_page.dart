import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:towfix/core/application/app_router/app_router.dart';
import 'package:towfix/core/presentation/pages/failure_page.dart';
import 'package:towfix/core/providers/common.dart';
import 'package:towfix/src/map/presentation/controller/search_controller.dart';
import 'package:towfix/src/tow_truck_service/pages/empty_vehicle_page.dart';
import 'package:ui_common/ui_common.dart';

import '../../map/presentation/pages/search_screen.dart';

class SelectVehiclePage extends ConsumerWidget {
  const SelectVehiclePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehiclesAsyncValue = ref.watch(vehiclesProvider);
    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    return vehiclesAsyncValue.when(
        data: (vehicles) {
          if (vehicles.isEmpty) {
            return const EmptyVehicleScreen();
          }

          return Scaffold(
              appBar: AppBar(
                title: const Text('Select Vehicle'),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: vehicles.length,
                        itemBuilder: (context, index) {
                          final vehicle = vehicles[index];
                          return InkWell(
                            onTap: () {
                              mapServiceControllerReader.vehicle = vehicle;
                              context.pushNamed(AppRoute.chooseLocation.name,
                                  extra: {'vehicle': vehicle});
                              // context.goNamed(
                              //   AppRoute.chooseLocation.name,
                              // );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.only(
                                  bottom: 10, left: 20, right: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: vehicle.image,
                                        fit: BoxFit.cover,
                                        errorWidget: (context, error, _) =>
                                            Icon(Icons.car_rental,
                                                color: Colors.grey),
                                      )),
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${vehicle.brand} ${vehicle.model}',
                                        style: context.titleMedium!.copyWith(
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        '${vehicle.color} | ${vehicle.numberPlate}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  ],
                                ),
                                const Spacer(),
                                // ElevatedButton(
                                //     onPressed: () {},
                                //     child: Text('Edit'),
                                //     style: ElevatedButton.styleFrom(
                                //       primary:
                                //           Color(0xff1c1385).withOpacity(0.24),
                                //       shape: RoundedRectangleBorder(
                                //         borderRadius: BorderRadius.circular(50),
                                //       ),
                                //       padding:
                                //           const EdgeInsets.symmetric(vertical: 8),
                                //     ))
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        FontAwesomeIcons.pencil,
                                        size: 20,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        FontAwesomeIcons.trashCan,
                                        size: 20,
                                      ),
                                    )
                                  ],
                                )
                              ]),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: Text('Done'),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const SearchScreen()));
                          }),
                    ),
                  )
                ],
              ));
        },
        error: (error, stackTrace) {
          return FailurePage(message: error.toString());
        },
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
