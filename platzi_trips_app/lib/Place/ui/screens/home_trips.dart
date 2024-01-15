import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/description_place.dart';
import 'package:platzi_trips_app/Place/ui/screens/header_appbar.dart';
import 'package:platzi_trips_app/Place/ui/widgets/review_list.dart';

class HomeTrips extends StatelessWidget {
  HomeTrips(this.descriptionDummy, {super.key});

  String descriptionDummy =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, sapien leo praesent etiam iaculis metus ut, consequat lacinia taciti ultrices at tellus integer. Nulla ad conubia donec senectus netus ultrices semper, metus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique.";


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", 4, descriptionDummy),
            const ReviewList(),
          ],
        ),
        const HeaderAppBar(),
      ],
    );
  }
}
