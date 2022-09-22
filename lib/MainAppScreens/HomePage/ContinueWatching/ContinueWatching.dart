import 'package:flutter/material.dart';

import 'ContinueWatchingCards.dart';

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> coursesCards = [
      {
        "image": "assets/images/Demo3.jpg",
        "title": "Java Full Course 103",
        "creator": "Roaa Abu Maizer",
        "press": () {}
      },
      {
        "image": "assets/images/Splash1.jpg",
        "title": "HTML Full Course 104",
        "creator": "I don't know at this point",
        "press": () {}
      },
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            coursesCards.length,
                (index) => ContinueWatchingCards(
              image: coursesCards[index]["image"],
              title: coursesCards[index]["title"],
              creator: coursesCards[index]["creator"],
              press: coursesCards[index]["press"],
            )
        )
      ],
    );
  }
}
