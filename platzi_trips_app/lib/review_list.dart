import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amiazing place in Sri Lanka",4),
        Review("assets/img/people.jpg", "Daniel", "2 review 5 photos", "There is an amiazing place in Sri Lanka",5),
        Review("assets/img/people.jpg", "Test", "3 review 5 photos", "There is an amiazing place in Sri Lanka",1),
      ],
    );
  }
}
