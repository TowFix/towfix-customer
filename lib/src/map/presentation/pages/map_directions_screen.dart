import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:towfix/core/application/env/env.dart';
import 'package:towfix/core/constants/app_sizes.dart';
import 'package:towfix/core/constants/assets/images.dart';
import 'package:towfix/core/data/dtos/service_request/service_request.dart';
import 'package:towfix/core/providers/common.dart';
import 'package:towfix/src/map/presentation/controller/common.dart';
import 'package:towfix/src/map/presentation/controller/search_controller.dart';
import 'package:towfix/src/map/presentation/pages/search_screen.dart';
import 'package:towfix/src/map/presentation/widgets/tow_truck_offer_tile.dart';
import 'package:ui_common/ui_common.dart';

final towTruckServiceLevelProvider =
    StateProvider<TowwTrucksServiceLevels?>((ref) => null);

class MapDirectionsScreen extends ConsumerStatefulWidget {
  static const id = 'map_directions_screen';
  const MapDirectionsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MapDirectionsScreenState();
}

class _MapDirectionsScreenState extends ConsumerState<MapDirectionsScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  CameraPosition pickedPosition =
      CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792));

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  // Future<void> userLocation() async {
  //   Position currentPosition = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);

  //   LatLng latLng = LatLng(currentPosition.latitude, currentPosition.longitude);

  //   CameraPosition cameraPosition = CameraPosition(target: latLng, zoom: 15);
  //   setState(() {
  //     pickedPosition = cameraPosition;
  //   });
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(
  //     CameraUpdate.newCameraPosition(cameraPosition),
  //   );
  // }

  final pageIndexNotifier = ValueNotifier(0);

  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Geolocator.requestPermission();
    });
    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    // final mapServiceControllerObserver =
    //     ref.watch(mapServiceControllerProvider);
    // final serviceController = ref.watch(transactionControllerProvider);

    // final serviceReader = ref.read(transactionControllerProvider.notifier);

    final destination = mapServiceControllerReader.dropOffLocation;
    final start = mapServiceControllerReader.pickUpLocation;

    /// origin marker
    _addMarker(LatLng(start!.latitude, start!.longitude), "origin",
        BitmapDescriptor.defaultMarker);

    /// destination marker
    _addMarker(LatLng(destination!.latitude, destination!.longitude),
        "destination", BitmapDescriptor.defaultMarkerWithHue(90));
    _getPolyline();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    final mapServiceControllerObserver =
        ref.watch(mapServiceControllerProvider);
    // final serviceController = ref.watch(transactionControllerProvider);

    // final serviceReader = ref.read(transactionControllerProvider.notifier);

    final towTruckServiceLevel = ref.watch(towTruckServiceLevelProvider);
    final towTruckServiceLevelReader =
        ref.read(towTruckServiceLevelProvider.notifier);

    final destination = mapServiceControllerObserver.dropOffLocation;
    final start = mapServiceControllerObserver.pickUpLocation;

    final directionsAsyncValue = ref.watch(directionsProvider(
        LatLng(start!.latitude, start.longitude),
        LatLng(destination!.latitude, destination.longitude)));
    return Scaffold(
      appBar: AppBar(),
      body: directionsAsyncValue.when(
          data: (asyncValue) {
            return asyncValue.fold((l) {
              return Center(
                child: Text(l.message),
              );
            }, (r) {
              List<PointLatLng> result = polylinePoints
                  .decodePolyline(r.routes!.first.overviewPolyline!.toString());
              print(result);

              // _addPolyLine();

              return Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: CameraPosition(
                              target: LatLng(start.latitude, start.longitude),
                              zoom: 12),
                          myLocationEnabled: true,
                          tiltGesturesEnabled: true,
                          compassEnabled: true,
                          scrollGesturesEnabled: true,
                          zoomGesturesEnabled: true,
                          rotateGesturesEnabled: true,
                          trafficEnabled: true,
                          myLocationButtonEnabled: true,
                          zoomControlsEnabled: true,
                          cameraTargetBounds: CameraTargetBounds(LatLngBounds(
                              northeast: LatLng(
                                r.routes!.first.bounds!.northeast!.lat!,
                                r.routes!.first.bounds!.northeast!.lng!,
                              ),
                              southwest: LatLng(
                                r.routes!.first.bounds!.southwest!.lat!,
                                r.routes!.first.bounds!.southwest!.lng!,
                              ))),
                          markers: Set<Marker>.of(markers.values),
                          polylines: Set<Polyline>.of(polylines.values),
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                          onCameraIdle: () {
                            log('camera idle');

                            // serviceReader.searchPlace(pickedPosition.target.latitude,
                            //     pickedPosition.target.longitude);
                          },
                          onCameraMove: (position) {
                            log('position: $position');

                            setState(() {
                              pickedPosition =
                                  CameraPosition(target: position.target);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              );
            });
          },
          error: (error, stackTrace) {
            return Center(
              child: Text('Error retrieving data'),
            );
          },
          loading: () => const CircularProgressIndicator()),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     await userLocation();
      //   },
      //   child: Icon(Icons.location_on),
      // ),
      bottomSheet: DraggableScrollableSheet(
        minChildSize: 0.1,
        maxChildSize: 0.8,
        initialChildSize: 0.25,
        snapSizes: const [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8],
        snap: true,
        expand: false,
        builder: (context, scrollController) {
          if (mapServiceControllerObserver.currentEventId.isNotEmpty ||
              mapServiceControllerObserver.loading) {
            return OnGoingRequestWidget(controller: scrollController);
          }

          return RequestBottomSheet(
            controller: scrollController,
          );
        },
      ),
    );
  }

  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id,
        color: Colors.black,
        points: polylineCoordinates,
        width: 4);
    polylines[id] = polyline;
    setState(() {});
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
        Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  _getPolyline() async {
    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    // final mapServiceControllerObserver =
    //     ref.watch(mapServiceControllerProvider);
    // final serviceController = ref.watch(transactionControllerProvider);

    // final serviceReader = ref.read(transactionControllerProvider.notifier);

    final destination = mapServiceControllerReader.dropOffLocation;
    final start = mapServiceControllerReader.pickUpLocation;

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        Env.googleMapsApiKey,
        PointLatLng(start!.latitude, start!.longitude),
        PointLatLng(destination!.latitude, destination!.longitude),
        travelMode: TravelMode.driving,
        wayPoints: []);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }
}

class RequestBottomSheet extends ConsumerStatefulWidget {
  final ScrollController controller;
  const RequestBottomSheet({
    required this.controller,
    super.key,
  });

  @override
  ConsumerState<RequestBottomSheet> createState() => _RequestBottomSheetState();
}

class _RequestBottomSheetState extends ConsumerState<RequestBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final towTruckServiceLevel = ref.watch(towTruckServiceLevelProvider);
    final towTruckServiceLevelReader =
        ref.read(towTruckServiceLevelProvider.notifier);
    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    final mapServiceControllerObserver =
        ref.watch(mapServiceControllerProvider);

    final destination = mapServiceControllerObserver.pickUpLocation;
    final origin = mapServiceControllerObserver.dropOffLocation;

    final cacheService = ref.watch(cacheServiceProvider);

    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(color: Colors.red),
      child: ListView(
        controller: widget.controller,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                height: 5,
                width: 60,
                decoration: BoxDecoration(
                    color: context.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          Row(
            children: [
              const StartToDropOffWidget(),
              SizedBox(
                width: context.mediaQuery.size.width * 0.7,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(origin?.name ?? ''),
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(origin?.name ?? ''),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            'Suggested Tow Trucks'.toUpperCase(),
            style: context.titleMedium,
          ),
          gapH12,
          TowOfferTile(
              isSelected:
                  towTruckServiceLevel == TowwTrucksServiceLevels.standard,
              onPressed: () {
                towTruckServiceLevelReader.state =
                    TowwTrucksServiceLevels.standard;
              },
              title: 'Standard'.toUpperCase(),
              price: '3',
              description: 'This offers a standard prize with essentials',
              image: Images.standardTowTruck),
          gapH12,
          TowOfferTile(
              onPressed: () {
                towTruckServiceLevelReader.state =
                    TowwTrucksServiceLevels.comfortable;
              },
              isSelected:
                  towTruckServiceLevel == TowwTrucksServiceLevels.comfortable,
              title: 'Comfortable'.toUpperCase(),
              price: '3',
              description: 'This offers a standard prize with essentials',
              image: Images.comfortableTowTruck),
          gapH12,
          TowOfferTile(
              onPressed: () {
                towTruckServiceLevelReader.state =
                    TowwTrucksServiceLevels.deluxe;
              },
              isSelected:
                  towTruckServiceLevel == TowwTrucksServiceLevels.deluxe,
              title: 'Deluxe'.toUpperCase(),
              price: '3',
              description: 'This offers a standard prize with essentials',
              image: Images.deluxeTowTruck),
          gapH12,
          Row(
            children: [
              SizedBox(
                width: context.mediaQuery.size.width * 0.75,
                child: ElevatedButton(
                  onPressed: () async {
                    //  mapServiceControllerReader.currentEventId =
                    //     'something here';
                    final serviceRequest = ServiceRequest.initial().copyWith(
                      origin: mapServiceControllerObserver.pickUpLocation!,
                      destination:
                          mapServiceControllerObserver.dropOffLocation!,
                      amount: 300,
                      requester: cacheService.profile,
                      serviceType: mapServiceControllerObserver.serviceType,
                      status: RequestStatus.requested,
                    );

                    final result = await ref
                        .watch(databaseRepositoryProvider)
                        .createServiceRequest(serviceRequest);
                    mapServiceControllerReader.loading = true;
                    result.fold((l) {
                      mapServiceControllerReader.loading = false;
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(l.message)));
                    }, (r) {
                      mapServiceControllerReader.loading = false;
                      mapServiceControllerReader.currentEventId = r.id;
                    });

                    widget.controller.jumpTo(0.5);
                    //  .animateTo(10,
                    //     duration: Duration(milliseconds: 500),
                    //     curve: Curves.ease);
                  },
                  child: const Text('Book a trip'),
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.calendar)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StartToDropOffWidget extends StatelessWidget {
  const StartToDropOffWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      child: Column(children: [
        const Icon(
          FontAwesomeIcons.location,
          size: 20,
        ),
        const Dash(),
        const Dash(),
        const Dash(),
        const Dash(),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: context.primaryColor,
          ),
        )
      ]),
    );
  }
}

//  Container(
//             width: double.infinity,
//             margin: const EdgeInsets.all(30),
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                       offset: const Offset(0, 2),
//                       blurRadius: 0.2,
//                       color: Colors.black.withOpacity(0.012)),
//                 ]),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   color: Colors.white,
//                   child: Row(
//                     children: [
//                       const StartToDropOffWidget(),
//                       Container(
//                         width: context.mediaQuery.size.width * 0.5,
//                         child: Column(
//                           children: [
//                             ListTile(
//                               title: Text(
//                                 origin?.name ?? '',
//                                 style: context.titleSmall,
//                               ),
//                               subtitle: Text(
//                                 'Pick up',
//                                 style: context.bodySmall,
//                               ),
//                             ),
//                             gapH12,
//                             ListTile(
//                               title: Text(
//                                 destination?.name ?? '',
//                                 style: context.titleSmall,
//                               ),
//                               subtitle: Text(
//                                 'Drop off',
//                                 style: context.bodySmall,
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 const Divider(),
//                 gapH4,
//                 Text('Towing Service'),
//                 ListTile(
//                   leading: SizedBox(
//                     height: 50,
//                     width: 50,
//                     child: CircleAvatar(),
//                   ),
//                   title: Text('Toyota Sandra'),
//                   subtitle: Text(''),
//                 ),
//                 gapH12,
//                 SizedBox(
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: const Text(
//                       'Request tow truck',
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),

enum TowwTrucksServiceLevels {
  standard,
  comfortable,
  deluxe,
}

class OnGoingRequestWidget extends ConsumerStatefulWidget {
  final ScrollController controller;

  const OnGoingRequestWidget({required this.controller, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnGoingRequestWidgetState();
}

class _OnGoingRequestWidgetState extends ConsumerState<OnGoingRequestWidget> {
  @override
  Widget build(BuildContext context) {
    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        controller: widget.controller,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: double.infinity),
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 5,
                    width: 60,
                    decoration: BoxDecoration(
                        color: context.primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              gapH24,
              // * state when waiting for vendor to respond
              Text(
                'Looking for Towing services near you',
                style: context.titleMedium,
              ),
              gapH12,
              LinearProgressIndicator(
                minHeight: 10,
                borderRadius: BorderRadius.circular(20),
              ),
              gapH12,
              Row(
                children: [
                  Text(
                    'Your driver will arrive in 4 minutes',
                    style: context.titleMedium,
                  ),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        mapServiceControllerReader.currentEventId = '';
                        log('strengths : ${widget.controller.position}');
                      },
                      child: Text('Cancel'))
                ],
              ),
              const Divider(),
              gapH12,
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Obolo Maxwell',
                            style: context.titleMedium,
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.star,
                                size: 15,
                              ),
                              Text(' 4.8'),
                              gapW12,
                              Text('20 reviews')
                            ],
                          )
                        ],
                      ),
                      gapW24,
                      Column(
                        children: [
                          const Text('Black toyota vios'),
                          Text('GW - 5483 - 09', style: context.titleMedium),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const Divider(),
              ElevatedButton(onPressed: () {}, child: Text('')),
              // * state when in progress

              // * state when completed

              ElevatedButton(
                  onPressed: () {
                    mapServiceControllerReader.currentEventId = '';
                    log('strengths : ${widget.controller.position}');
                  },
                  child: Text('Smile'))
            ],
          )
        ],
      ),
    );
  }
}
