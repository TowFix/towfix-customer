import 'package:flutter/material.dart';

class NearByMechanicShopsWidget extends StatelessWidget {
  const NearByMechanicShopsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mechanic Shops Nearby',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                'Mechanic Shop 1',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(
                'Mechanic Shop 1 Address',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                'Mechanic Shop 1',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(
                'Mechanic Shop 1 Address',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                'Mechanic Shop 1',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(
                'Mechanic Shop 1 Address',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
