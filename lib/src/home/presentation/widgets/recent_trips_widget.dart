import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentTripsWidget extends ConsumerWidget {
  const RecentTripsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Trips', style: Theme.of(context).textTheme.titleMedium),
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            'M1 Address',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            'M1 Address',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            'M1 Address',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
