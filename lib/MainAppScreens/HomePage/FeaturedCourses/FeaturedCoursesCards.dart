import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class FeaturedCoursesCards extends StatelessWidget {
   FeaturedCoursesCards({
    Key? key,
    required this.image,
    required this.title,
    required this.creator,
    required this.oldPrice,
    required this.newPrice,
    required this.press,
  }) : super(key: key);
  final String image, title, creator, newPrice;
  final String oldPrice;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: SizedBox(
          width: getProportionateScreenWidth(230),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.screenHeight * 0.165,
                padding: EdgeInsets.all(getProportionateScreenWidth(16)),
                decoration: BoxDecoration(
                  color: const Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                title,
                style: TextStyle(
                    color: darkMode==false? homeLightFontColor : homeDarkFontColor,
                    fontWeight: FontWeight.w700,
                    fontSize: getProportionateScreenWidth(16)),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                creator,
                style: TextStyle(color: darkMode==false? homeLightFontColor : homeDarkFontColor,),
              ),
              Row(
                children: [
                  Text(
                    "\$${newPrice}",
                    style: TextStyle(
                      color: darkMode==false? homeLightFontColor : homeDarkFontColor,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Text(
                    "\$${oldPrice}",
                    style: TextStyle(
                      color: darkMode==false? homeLightFontColor : homeDarkFontColor,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}