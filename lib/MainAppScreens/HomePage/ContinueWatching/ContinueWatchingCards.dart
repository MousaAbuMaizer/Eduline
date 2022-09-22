import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ContinueWatchingCards extends StatelessWidget {
  ContinueWatchingCards({
    Key? key,
    required this.image,
    required this.title,
    required this.creator,
    required this.press,
  }) : super(key: key);
  final String image, title, creator;
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
            ],
          ),
        ),
      ),
    );
  }
}