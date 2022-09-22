import 'package:flutter/material.dart';

import '../size_config.dart';

class NormalTextField extends StatelessWidget {
  const NormalTextField({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(17),
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
