import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:towfix/core/constants/app_sizes.dart';
import 'package:towfix/core/data/dtos/vehicle/vehicle.dart';

class TowTruckRequestPage extends ConsumerWidget {
  final Vehicle vehicle;
  const TowTruckRequestPage({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('vehicle: $vehicle');
    return Scaffold(
      appBar: AppBar(
        title: Text(vehicle.brand),
      ),
      body: Column(
        children: [
          gapH32,
          const SizedBox(width: double.infinity),
          Text(vehicle.brand),
        ],
      ),
    );
  }
}
