import 'package:flutter/material.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_enter_ph_number_widgets.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_select_country_widgets.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

class LoginSelectCountry extends StatefulWidget {
  const LoginSelectCountry({super.key});

  @override
  State<LoginSelectCountry> createState() => _LoginSelectCountryState();
}

class _LoginSelectCountryState extends State<LoginSelectCountry> {
  TextEditingController country_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_with_back(context),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(displaysize.width * .04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick your country",
                  style: TextStyle(
                      color: app_theme_blue2,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'general_sans',
                      fontSize: displaysize.width * .055),
                ),
                SizedBox(
                  height: displaysize.height * .02,
                ),
                Text(
                  "Choose the nation where you currently live or\nreside.",
                  style: TextStyle(
                      color: app_theme_blue2,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'general_sans',
                      fontSize: displaysize.width * .035),
                ),
                SizedBox(
                  height: displaysize.height * .03,
                ),
                country_inputfield('Search Here...', country_controller),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: displaysize.width * .04),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                    vertical: displaysize.height * .008, horizontal: 16),
                height: displaysize.height * .07,
                decoration: BoxDecoration(
                  border:
                      Border.fromBorderSide(BorderSide(color: app_theme_grey0)),
                  borderRadius: BorderRadius.circular(displaysize.width / 4),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: displaysize.width * .04),
                  child: country_format(context, "assets/images/india.png"),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
