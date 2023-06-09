import 'package:flutter/material.dart';

class MapPreviewWidget extends StatelessWidget {
  const MapPreviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        height: MediaQuery.of(context).size.height * 0.22,
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}
