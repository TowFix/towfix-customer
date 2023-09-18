import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ui_common/ui_common.dart';

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

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Geolocator.requestPermission();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final serviceController = ref.watch(transactionControllerProvider);

    // final serviceReader = ref.read(transactionControllerProvider.notifier);
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

                    // serviceReader.searchPlace(pickedPosition.target.latitude,
                    //     pickedPosition.target.longitude);
                  },
                  onCameraMove: (position) {
                    log('position: $position');

                    setState(() {
                      pickedPosition = CameraPosition(target: position.target);
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     await userLocation();
      //   },
      //   child: Icon(Icons.location_on),
      // ),
      bottomSheet: DraggableScrollableSheet(
        minChildSize: 0.1,
        maxChildSize: 0.5,
        initialChildSize: 0.25,
        snap: false,
        expand: false,
        builder: (context, scrollController) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.red),
            child: ListView(
              controller: scrollController,
              children: [Text("I'll be ")],
            ),
          );
        },
      ),
    );
  }
}
