import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:towfix/src/home/presentation/widgets/recent_trips_widget.dart';

import '../../../map/presentation/pages/search_screen.dart';
import '../widgets/map_preview_widget.dart';
import '../widgets/near_by_mechanic_shops_widget.dart';
import '../widgets/service_options_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.black)),
          title: Text(
            'Good afternoon, Trudy',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.light_mode, color: Colors.black)),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                        fullscreenDialog: true));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.grey),
                        const SizedBox(width: 10),
                        Text(
                          'Search for a location',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: const Color(0xff3b3b3b)
                                      .withOpacity(0.56)),
                        ),
                        Spacer(),
                        const Icon(Icons.arrow_right_alt, color: Colors.grey),
                      ],
                    ),
                  )),
              const SizedBox(height: 20),
              const RecentTripsWidget(),
              const SizedBox(height: 20),
              const ServiceOptionsWidgets(),
              const SizedBox(height: 10),
              const MapPreviewWidget(),
              const SizedBox(height: 20),
              const NearByMechanicShopsWidget(),
            ],
          ),
        ));
  }
}
