import 'package:flutter/material.dart';
import 'package:mountain_trip_api/pages/DetailsPages/detailPages.dart';
import 'package:mountain_trip_api/pages/Home/widgets/LocationCard.dart';

class ViewListLocation extends StatelessWidget {
  const ViewListLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            LocationCard(press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            }),
            LocationCard(press: () {}),
            LocationCard(press: () {}),
            LocationCard(press: () {}),
          ],
        ),
      ),
    );
  }
}