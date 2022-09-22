import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CategoriesCards extends StatelessWidget {
  CategoriesCards({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        child: SizedBox(
          width: getProportionateScreenWidth(140),
          child: Container(
            height: getProportionateScreenHeight(70),
            padding: EdgeInsets.all(getProportionateScreenWidth(16)),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              color: const Color(0xFFECECEC),
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                  image: AssetImage("assets/images/Categories2.jpg"), fit: BoxFit.cover),
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(17),
                    fontWeight: FontWeight.w700
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}