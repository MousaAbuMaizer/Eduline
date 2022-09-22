import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PhoneNumberTextField extends StatefulWidget {
  const PhoneNumberTextField({Key? key}) : super(key: key);

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  String textNumberPhone = '';
  String dialCodeInitial = '+962';
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        CountryListPick(
          initialSelection: dialCodeInitial,
          useUiOverlay: false,
          theme: CountryTheme(
            isShowTitle: false,
          ),
          onChanged: (CountryCode? code) {
            setState(() {
              if (code?.dialCode != null) {
                dialCodeInitial = code!.dialCode!;
              } else {
                print('error =>>>> code.dialCode = null');
              }
            });
          },
        ),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Your Phone Number",
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
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}