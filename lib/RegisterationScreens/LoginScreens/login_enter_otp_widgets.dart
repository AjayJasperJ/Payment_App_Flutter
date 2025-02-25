//otp entities
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

SizedBox otptextform(context) {
  return SizedBox(
    height: displaysize.height * .06,
    width: displaysize.width * .2,
    child: TextFormField(
      style: TextStyle(color: app_theme_blue2),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(displaysize.width / 4),
              borderSide: BorderSide(
                color: app_theme_grey1,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(displaysize.width / 4),
              borderSide: BorderSide(
                color: app_theme_grey,
              ))),
    ),
  );
}
