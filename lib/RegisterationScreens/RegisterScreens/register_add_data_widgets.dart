import 'package:flutter/material.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

class Register_input_field extends StatelessWidget {
  final String fieldname;
  final Icon prefixicon;
  final dynamic suffixicon;
  final dynamic keyboardtype;
  final dynamic controller;
  final dynamic inputformat;
  const Register_input_field(
      {super.key,
      required this.fieldname,
      required this.prefixicon,
      this.suffixicon,
      this.keyboardtype,
      this.controller,
      this.inputformat});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardtype,
        inputFormatters: inputformat,
        style: TextStyle(color: app_theme_blue2),
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.all(displaysize.height * .02),
              child: GestureDetector(onTap: () {}, child: prefixicon),
            ),
            hintText: fieldname,
            suffixIcon: suffixicon,
            prefixIconColor: app_theme_grey,
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
}
