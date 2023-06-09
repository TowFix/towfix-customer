import 'package:flutter/material.dart';

class ServiceOptionsWidgets extends StatelessWidget {
  const ServiceOptionsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 50,
                  color: Colors.grey[200],
                ),
                const SizedBox(height: 10),
                Text(
                  'Mechanic Shops around',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 8),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 50,
                  color: Colors.grey[200],
                ),
                const SizedBox(height: 10),
                Text(
                  'Mechanic Shops around',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 8),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 50,
                  color: Colors.grey[200],
                ),
                const SizedBox(height: 10),
                Text(
                  'Mechanic Shops around',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 8),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
