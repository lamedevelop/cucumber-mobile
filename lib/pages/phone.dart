import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:cucumber_mobile/config/network.dart' as network;
import 'package:cucumber_mobile/widgets/product/product.dart';
import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';


class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

bool isValidPhoneNumber(String? string) {
  // Null or empty string is invalid phone number
  if (string == null || string.isEmpty) {
    return false;
  }

  // You may need to change this pattern to fit your requirement.
  // I just copied the pattern from here: https://regexr.com/3c53v
  const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
  final regExp = RegExp(pattern);

  if (!regExp.hasMatch(string)) {
    return false;
  }
  return true;
}

class _PhoneState extends State<Phone> {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _listViewBuilder(),
      hasShortTopBar: true,
    );
  }

  Widget _listViewBuilder() {
    return ListView(
      children: <Widget>[
        InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
            print(number.phoneNumber);

            if (isValidPhoneNumber(number.phoneNumber)) {
              print('Phone Number is OKKK');
            } else {
              print('Phone Number must be up to 11 digits');
            }

          },
          onInputValidated: (bool value) {
            print(value);
          },
          selectorConfig: SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          ),
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.disabled,
          selectorTextStyle: TextStyle(color: Colors.black),
          formatInput: false,
          keyboardType:
              TextInputType.numberWithOptions(signed: true, decimal: true),
          inputBorder: OutlineInputBorder(),
          onSaved: (PhoneNumber number) {
            print('On Saved: $number');
          },
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {
            // var client = http.Client();
            // Uri url = Uri.http(network.API_URL, network.PHONE_PATH);

            Map<String, String> body = {
              'name': 'doodle',
              'color': 'blue',
              'homeTeam': json.encode(
                {'team': 'Team A'},
              ),
              'awayTeam': json.encode(
                {'team': 'Team B'},
              ),
            };


            http.post(
              Uri.parse('http://127.0.0.1:8000/phone'),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: "{phone: 11111}",
            ).timeout(Duration(seconds: 5));

          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}


