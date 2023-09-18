import 'package:flutter/material.dart';

class ListMerchanics extends StatelessWidget {
  const ListMerchanics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Card(
              child: Container(
                child: Row(
                  children: [],
                ),
              ),
            )
          ],
        ));
  }
}
