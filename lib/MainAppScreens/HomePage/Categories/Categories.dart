import 'package:flutter/material.dart';

import 'CategoriesCards.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categories = [
      'Design','Business','IT & Software','Marketing','Development'
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            categories.length,
                (index) => CategoriesCards(
              title: categories[index],
            )
        )
      ],
    );
  }
}
