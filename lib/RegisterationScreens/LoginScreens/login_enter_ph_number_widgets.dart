import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_select_country.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

AppBar appbar_with_back(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    flexibleSpace: Container(
      color: app_theme_bg,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
              top: displaysize.height * .03,
              right: displaysize.width * .04,
              left: displaysize.width * .04),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: displaysize.width * .14,
                  width: displaysize.width * .14,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(displaysize.width / 4),
                      border: Border.fromBorderSide(
                          BorderSide(width: 1, color: app_theme_grey1))),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: app_theme_blue2,
                    size: displaysize.width * .05,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    toolbarHeight: displaysize.height * .12,
  );
}

SizedBox ph_number_input_field(
    BuildContext context, String fieldtext, TextEditingController controller) {
  return SizedBox(
    height: displaysize.height * .06,
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.digitsOnly
      ],
      controller: controller,
      style: TextStyle(color: app_theme_blue2),
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: displaysize.width * .04),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginSelectCountry(),
                    ));
              },
              child: SizedBox(
                width: 70,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 11,
                      backgroundImage: AssetImage('assets/images/india.png'),
                    ),
                    SizedBox(width: 2),
                    Text(
                      "+91",
                      style: TextStyle(
                          color: app_theme_grey,
                          fontSize: displaysize.width * .035,
                          fontFamily: 'general_sans',
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: displaysize.width * .05,
                      color: app_theme_grey,
                    )
                  ],
                ),
              ),
            ),
          ),
          contentPadding: EdgeInsets.all(0),
          hintText: fieldtext,
          hintStyle: TextStyle(
              color: app_theme_grey,
              fontSize: displaysize.width * .035,
              fontFamily: 'general_sans',
              fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
              gapPadding: 1,
              borderRadius: BorderRadius.circular(displaysize.width / 4),
              borderSide: BorderSide(
                color: app_theme_grey1,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(displaysize.width / 4),
              borderSide: BorderSide(
                color: app_theme_blue,
              ))),
    ),
  );
}
