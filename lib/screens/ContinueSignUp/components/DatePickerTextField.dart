import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../size_config.dart';

class DatePickerTextField extends StatelessWidget {
  const DatePickerTextField({
    Key? key,
    required this.dateCtl,
  }) : super(key: key);

  final TextEditingController dateCtl;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: dateCtl,
        decoration: InputDecoration(
          labelText: "Your precious Birthdate",
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
        onTap: () async {
          DateTime? date = DateTime(1900);
          FocusScope.of(context).requestFocus(new FocusNode());
          date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100));
          dateCtl.text = DateFormat('yyyy-MM-dd').format(date!);
        });
  }
}