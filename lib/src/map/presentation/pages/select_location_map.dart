import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:towfix/core/constants/assets/images.dart';
import 'package:towfix/core/data/dtos/address/address.dart';
import 'package:ui_common/ui_common.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../towfix_services/presentation/controller/towfix_services_state_controlller.dart';

class SelectLocationMap extends ConsumerStatefulWidget {
  const SelectLocationMap({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectLocationMapState();
}

class _SelectLocationMapState extends ConsumerState<SelectLocationMap> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  CameraPosition pickedPosition =
      CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792));

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> userLocation() async {
    Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    LatLng latLng = LatLng(currentPosition.latitude, currentPosition.longitude);

    CameraPosition cameraPosition = CameraPosition(target: latLng, zoom: 15);
    setState(() {
      pickedPosition = cameraPosition;
    });
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(cameraPosition),
    );
  }

  final pageIndexNotifier = ValueNotifier(0);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Geolocator.requestPermission();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final serviceController = ref.watch(transactionControllerProvider);

    final serviceReader = ref.read(transactionControllerProvider.notifier);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  onCameraIdle: () {
                    log('camera idle');

                    serviceReader.searchPlace(pickedPosition.target.latitude,
                        pickedPosition.target.longitude);
                  },
                  onCameraMove: (position) {
                    log('position: $position');

                    setState(() {
                      pickedPosition = CameraPosition(target: position.target);
                    });
                  },
                ),
              ),
              Container(
                height: context.mediaQuery.size.height * 0.2,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      serviceController.directions.locationName ?? '',
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                    gapH24,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20),
                            backgroundColor: context.primaryColor,
                            foregroundColor: context.colorScheme.onPrimary),
                        onPressed: () {
                          final address = Address.initial().copyWith(
                              name: serviceController.directions.locationName ??
                                  '',
                              latitude: serviceController
                                  .directions.locationLatitude!,
                              longitude: serviceController
                                  .directions.locationLongitude!);

                          context.pop(address);
                        },
                        child: const Text('Done'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 50,
                    decoration: const BoxDecoration(),
                    child: Image.asset(Images.locationPicker),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     await userLocation();
      //   },
      //   child: Icon(Icons.location_on),
      // ),
      // bottomSheet: DraggableScrollableSheet(
      //   minChildSize: 0.1,
      //   maxChildSize: 0.5,
      //   initialChildSize: 0.25,
      //   snap: false,
      //   expand: false,
      //   builder: (context, scrollController) {
      //     return Container(
      //       width: double.infinity,
      //       decoration: BoxDecoration(color: Colors.red),
      //       child: ListView(
      //         controller: scrollController,
      //         children: [Text("I'll be ")],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
