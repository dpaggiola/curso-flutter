import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  Review(this.pathImage, this.name, this.details, this.comment, this.stars, {super.key});

  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  int stars = 4;

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        // Row(
        //   children: <Widget>[userInfo, star, star, star, star, starHalf],
        // ),
        userComment,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
