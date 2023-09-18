import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rating/rating.dart';
import 'package:towfix/core/application/app_router/app_router.dart';
import 'package:towfix/core/constants/assets/images.dart';
import 'package:towfix/core/constants/assets/svgs.dart';
import 'package:towfix/core/data/dtos/service_request/service_request.dart';
import 'package:towfix/core/providers/common.dart';

import 'package:towfix/src/home/presentation/widgets/recent_trips_widget.dart';
import 'package:towfix/src/map/presentation/controller/search_controller.dart';
import 'package:towfix/src/map/presentation/pages/map_directions_screen.dart';

import '../../../map/presentation/pages/search_screen.dart';
import '../../../tow_truck_service/pages/empty_vehicle_page.dart';
import '../widgets/map_preview_widget.dart';
import '../widgets/near_by_mechanic_shops_widget.dart';
import '../widgets/service_options_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final ratingModel = RatingModel(
    id: 1,
    title: null,
    subtitle: 'Classifique nosso app:',
    ratingConfig: RatingConfigModel(
      id: 1,
      ratingSurvey1: 'Em que podemos melhorar?',
      ratingSurvey2: 'Em que podemos melhorar?',
      ratingSurvey3: 'Em que podemos melhorar?',
      ratingSurvey4: 'Em que podemos melhorar?',
      ratingSurvey5: 'O que você mais gostou?',
      items: [
        RatingCriterionModel(id: 1, name: 'Qualidade do atendimento'),
        RatingCriterionModel(id: 2, name: 'Competência dos atendentes'),
        RatingCriterionModel(id: 3, name: 'Limpeza do ambiente'),
        RatingCriterionModel(id: 4, name: 'Tempo de espera'),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    final cacheService = ref.read(cacheServiceProvider);
    final user = cacheService.profile;

    final mapServiceControllerReader =
        ref.read(mapServiceControllerProvider.notifier);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Svgs.menuIcon,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(5),
              child: Badge(
                backgroundColor: Theme.of(context).primaryColor,
                label: Text('2'),
                child: Container(
                  // padding: const EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // color: Color(0xffc9c7e2),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffc9c7e2),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Hi, ${user.firstName}.',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              const SizedBox(height: 5),
              Row(children: [
                const Icon(Icons.location_on),
                Text(
                  'Tema, Habour',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                )
              ]),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xff373636).withOpacity(0.58),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text('Search'),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 20),
                  Text('Request Services',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20),
                  Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      TowRequestCard(
                        title: 'Tow Truck Service',
                        svg: Svgs.towtruck,
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //                   //             const EmptyVehicleScreen()));
                          //                   final towTruckServiceLevelReader =
                          // ref.read(towTruckServiceLevelProvider.notifier);

                          mapServiceControllerReader.serviceType =
                              ServiceType.towing;
                          // tow

                          context.pushNamed(AppRoute.selectVehicle.name);
                        },
                      ),
                      TowRequestCard(
                        onPressed: () {
                          log('inside merchanic shop');
                          mapServiceControllerReader.serviceType =
                              ServiceType.mechanicRequest;
                          context.pushNamed(AppRoute.merchanicShops.name);
                        },
                        title: 'Request Mechanic',
                        svg: Svgs.mechanicfix,
                      ),
                      TowRequestCard(
                        onPressed: () {
                          mapServiceControllerReader.serviceType =
                              ServiceType.merchanicShop;
                        },
                        title: 'Mechanic Shop',
                        svg: Svgs.mechanicshop,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Mechanic Shop Near You',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000))),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          )),
                      const SizedBox(height: 20),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: SizedBox(
                      // width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                    Images.appleIcon,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Apple Auto Shop',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: 4.5,
                                            itemBuilder: (context, index) =>
                                                Icon(
                                              Icons.star,
                                            ),
                                            itemCount: 5,
                                            itemSize: 15.0,
                                            direction: Axis.horizontal,
                                          ),
                                          Text(' | '),
                                          Text(
                                            'Tema, Habour',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  // todo: fix minutes issue
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Spacer(),
                                      InkWell(
                                        child: Text('15 mins'),
                                        onTap: () {},
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  color: Theme.of(context).primaryColor),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tema, Comm 1 Center',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '0.2km from you',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class TowRequestCard extends StatelessWidget {
  final String svg;
  final String title;
  final Function()? onPressed;
  const TowRequestCard({
    super.key,
    required this.svg,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        constraints: BoxConstraints(minHeight: 140),
        width: (MediaQuery.of(context).size.width / 3) - 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(height: 5),
            SvgPicture.asset(
              svg,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
