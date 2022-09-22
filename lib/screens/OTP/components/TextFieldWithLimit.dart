import 'package:flutter/material.dart';

import '../../../size_config.dart';


class TextFieldWithLimit extends StatelessWidget {
  const TextFieldWithLimit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      maxLength: 8,
      //textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
            left: getProportionateScreenWidth(50),
            right: getProportionateScreenWidth(50)),
        labelText: "Put in the code we've sent you",
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(17),
          height: 1.4,
        ),
        hintText: "",
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}