import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

SizedBox country_inputfield(
    String fieldtext, TextEditingController controller) {
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
              padding: EdgeInsets.only(
                  left: displaysize.width * .04,
                  right: displaysize.width * .04),
              child: Icon(
                Icons.search,
                color: app_theme_grey,
              )),
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

Row country_format(BuildContext context, String imagepath) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(children: [
        CircleAvatar(
          radius: displaysize.width * .03,
          backgroundColor: app_theme_bg,
          backgroundImage: AssetImage(imagepath),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "India",
          style: TextStyle(
              color: app_theme_blue2,
              fontWeight: FontWeight.w500,
              fontFamily: 'general_sans',
              fontSize: displaysize.width * .035),
        )
      ]),
      Container(
          height: displaysize.width * .05,
          width: displaysize.width * .05,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border:
                  Border.fromBorderSide(BorderSide(color: app_theme_grey0))))
    ],
  );
}
