import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:towfix/core/constants/assets/images.dart';

class SelectTowTruckPage extends ConsumerStatefulWidget {
  const SelectTowTruckPage({super.key});

  @override
  ConsumerState<SelectTowTruckPage> createState() => _SelectTowTruckPageState();
}

class _SelectTowTruckPageState extends ConsumerState<SelectTowTruckPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Tow Truck'),
      ),
      backgroundColor: Colors.grey[200],
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
      // bottomNavigationBar: DraggableScrollableSheet(
      //     // snap: true,
      //     snap: true,
      //     initialChildSize: 0.4,
      //     minChildSize: 0.4,
      //     maxChildSize: 0.8,
      //     expand: true,
      //     builder: ((context, scrollController) {
      //       return Container(
      //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //         decoration: const BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.only(
      //                 topLeft: Radius.circular(20),
      //                 topRight: Radius.circular(20))),
      //         child: ListView(
      //           // crossAxisAlignment: CrossAxisAlignment.start,
      //           shrinkWrap: true,
      //           controller: scrollController,
      //           children: [
      //             SizedBox(
      //               width: double.infinity,
      //               child: Center(
      //                 child: Container(
      //                   alignment: Alignment.center,
      //                   margin: const EdgeInsets.only(top: 10),
      //                   height: 5,
      //                   width: 100,
      //                   decoration: BoxDecoration(
      //                     color: Colors.grey[300],
      //                     borderRadius: BorderRadius.circular(10),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             const SizedBox(height: 10),
      //             Row(
      //               children: [
      //                 Container(
      //                   width: 30,
      //                   height: 80,
      //                   color: Colors.red,
      //                 ),
      //                 const SizedBox(width: 10),
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text('Tow Truck Name',
      //                         style: Theme.of(context).textTheme.bodyMedium),
      //                     const SizedBox(height: 10),
      //                     Container(
      //                         height: 3,
      //                         // width: double.infinity,
      //                         width: MediaQuery.of(context).size.width * 0.7,
      //                         color: Colors.grey[300]),
      //                     const SizedBox(height: 10),
      //                     Text('Tow Truck Type',
      //                         style: Theme.of(context).textTheme.bodyMedium),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(height: 20),
      //             Text('SUGGESTED TOW TRUCKS',
      //                 style: Theme.of(context)
      //                     .textTheme
      //                     .titleMedium!
      //                     .copyWith(fontWeight: FontWeight.bold)),
      //             Expanded(
      //                 child: ListView(
      //               children: const [
      //                 OfferTile(
      //                   title: 'Standard',
      //                   image: Images.standardTowTruck,
      //                   description:
      //                       'This offers a standard prize with no essentials',
      //                   price: '300',
      //                 ),
      //                 SizedBox(height: 10),
      //                 OfferTile(
      //                   title: 'Comfortable',
      //                   image: Images.comfortableTowTruck,
      //                   description:
      //                       'This offers a standard prize with no essentials',
      //                   price: '500',
      //                 ),
      //                 SizedBox(height: 10),
      //                 OfferTile(
      //                   title: 'Deluxe',
      //                   image: Images.deluxeTowTruck,
      //                   description:
      //                       'This offers a standard prize with no essentials',
      //                   price: '300',
      //                 ),
      //               ],
      //             )),
      //           ],
      //         ),
      //       );
      //     })),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

class OfferTile extends StatelessWidget {
  const OfferTile({
    super.key,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });
  final String title;
  final String price;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(
            243,
            243,
            243,
            0.56,
          )),
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(child: SizedBox(width: 100, child: Image.asset(image))),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  const SizedBox(width: 20),
                  Text('GHc $price'),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: RichText(
                  text: TextSpan(
                      text: description,
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
