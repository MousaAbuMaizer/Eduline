import 'package:flutter/material.dart';

import 'FeaturedCoursesCards.dart';

class FeaturedCourses extends StatelessWidget {
  const FeaturedCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> coursesCards = [
      {
        "image": "assets/images/Demo1.jpg",
        "title": "Flutter Full Course 101",
        "creator": "Moses Abu Maizer",
        "oldPrice": "20.00",
        "newPrice": "15.99",
        "press": () {}
      },
      {
        "image": "assets/images/Demo4.jpg",
        "title": "Python Full Course 102",
        "creator": "Kareem Abu Maizer",
        "oldPrice": "35.00",
        "newPrice": "19.99",
        "press": () {}
      },
      {
        "image": "assets/images/Demo3.jpg",
        "title": "Java Full Course 103",
        "creator": "Roaa Abu Maizer",
        "oldPrice": "18.00",
        "newPrice": "12.99",
        "press": () {}
      },
      {
        "image": "assets/images/Splash1.jpg",
        "title": "HTML Full Course 104",
        "creator": "I don't know at this point",
        "oldPrice": "35.00",
        "newPrice": "22.99",
        "press": () {}
      },
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            coursesCards.length,
                (index) => FeaturedCoursesCards(
              image: coursesCards[index]["image"],
              title: coursesCards[index]["title"],
              creator: coursesCards[index]["creator"],
              oldPrice: coursesCards[index]["oldPrice"],
              newPrice: coursesCards[index]["newPrice"],
              press: coursesCards[index]["press"],
            )
        )
      ],
    );
  }
}
