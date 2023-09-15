import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:towfix/core/constants/app_sizes.dart';
import 'package:ui_common/ui_common.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../../../../core/constants/assets/images.dart';
import '../controller/towfix_services_state_controlller.dart';

const double _bottomPaddingForButton = 150.0;
const double _buttonHeight = 56.0;
const double _buttonWidth = 200.0;
const double _pagePadding = 16.0;
const double _pageBreakpoint = 768.0;
const double _heroImageHeight = 250.0;
const Color _lightThemeShadowColor = Color(0xFFE4E4E4);
const Color _darkThemeShadowColor = Color(0xFF121212);
const Color _darkSabGradientColor = Color(0xFF313236);

class TowfixServicesMapPage extends ConsumerStatefulWidget {
  const TowfixServicesMapPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TowfixServicesMapPageState();
}

class _TowfixServicesMapPageState extends ConsumerState<TowfixServicesMapPage> {
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
            GoogleMap(
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
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(Sizes.p20),
                        alignment: Alignment.center,
                        height: context.mediaQuery.size.height * 0.1,
                        width: context.mediaQuery.size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          serviceController.directions.locationName ?? '',
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 50,
                      decoration: BoxDecoration(),
                      child: Image.asset(Images.locationPicker),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await userLocation();
          },
          child: Icon(Icons.location_on),
        ),
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
        ));
  }

  WoltModalSheetPage page1(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return WoltModalSheetPage.withSingleChild(
      hasSabGradient: false,
      stickyActionBar: Padding(
        padding: const EdgeInsets.all(_pagePadding),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(modalSheetContext).pop(),
              child: const SizedBox(
                height: _buttonHeight,
                width: double.infinity,
                child: Center(child: Text('Cancel')),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () =>
                  pageIndexNotifier.value = pageIndexNotifier.value + 1,
              child: const SizedBox(
                height: _buttonHeight,
                width: double.infinity,
                child: Center(child: Text('Next page')),
              ),
            ),
          ],
        ),
      ),
      topBarTitle: Text('Pagination', style: textTheme.titleSmall),
      isTopBarLayerAlwaysVisible: true,
      trailingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(_pagePadding),
        icon: const Icon(Icons.close),
        onPressed: Navigator.of(modalSheetContext).pop,
      ),
      child: const Padding(
          padding: EdgeInsets.fromLTRB(
            _pagePadding,
            _pagePadding,
            _pagePadding,
            _bottomPaddingForButton,
          ),
          child: Text(
            '''
Pagination involves a sequence of screens the user navigates sequentially. We chose a lateral motion for these transitions. When proceeding forward, the next screen emerges from the right; moving backward, the screen reverts to its original position. We felt that sliding the next screen entirely from the right could be overly distracting. As a result, we decided to move and fade in the next page using 30% of the modal side.
''',
          )),
    );
  }

  WoltModalSheetPage page2(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return WoltModalSheetPage.withCustomSliverList(
      stickyActionBar: Padding(
        padding: const EdgeInsets.fromLTRB(
            _pagePadding, _pagePadding / 4, _pagePadding, _pagePadding),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
          child: const SizedBox(
            height: _buttonHeight,
            width: double.infinity,
            child: Center(child: Text('Close')),
          ),
        ),
      ),
      pageTitle: Padding(
        padding: const EdgeInsets.symmetric(horizontal: _pagePadding),
        child: Text(
          'Material Colors',
          style:
              textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      heroImage: Image(
        image: AssetImage(
          Images.locationPicker,
        ),
        fit: BoxFit.cover,
      ),
      leadingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(_pagePadding),
        icon: const Icon(Icons.arrow_back_rounded),
        onPressed: () => pageIndexNotifier.value = pageIndexNotifier.value - 1,
      ),
      trailingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(_pagePadding),
        icon: const Icon(Icons.close),
        onPressed: () {
          Navigator.of(modalSheetContext).pop();
          pageIndexNotifier.value = 0;
        },
      ),
      sliverList: SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) => Container(
            child: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}
