import 'package:flutter/material.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_enter_ph_number.dart';
import 'package:neo_pay/RegisterationScreens/RegisterScreens/register_add_data.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

ShowCustomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: white,
    barrierColor: Colors.white.withOpacity(0),
    constraints: BoxConstraints(maxHeight: displaysize.height * .23),
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    builder: (BuildContext context) {
      return Container(
          decoration: BoxDecoration(
              color: white,
              boxShadow: [BoxShadow(blurRadius: 10, color: grey4)],
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
          child: _Sheetdata(context));
    },
  );
}

Column _Sheetdata(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 3,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(displaysize.height / 4),
            color: app_theme_grey),
      ),
      SizedBox(),
      Container(
          height: displaysize.height * .06,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginEnterPhNumber(),
                  ));
            },
            style: ButtonStyle(
                    splashFactory: InkSplash.splashFactory,
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(app_theme_blue))
                .copyWith(
              overlayColor: WidgetStateProperty.resolveWith<Color?>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.white.withValues(alpha: 0.1);
                  }
                  return null;
                },
              ),
            ),
            child: Center(
                child: Text(
              "Login",
              style: TextStyle(
                  color: white,
                  fontFamily: 'general_sans',
                  fontWeight: FontWeight.w400),
            )),
          )),
      Row(
        children: [
          Expanded(
              child: Divider(
            color: app_theme_grey,
            thickness: .5,
          )),
          SizedBox(
            width: 10,
          ),
          Text(
            "Or",
            style: TextStyle(color: app_theme_grey, fontFamily: 'general_sans'),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Divider(
            color: app_theme_grey,
            thickness: .5,
          ))
        ],
      ),
      Container(
        height: displaysize.height * .06,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterAddData()));
          },
          style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(displaysize.width / 4),
                      side: BorderSide(color: app_theme_blue))),
                  splashFactory: InkSplash.splashFactory,
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStatePropertyAll(white))
              .copyWith(
            overlayColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return app_theme_blue.withValues(alpha: 0.1);
                } else if (states.contains(WidgetState.hovered)) {
                  return app_theme_grey0.withValues(alpha: .1);
                }
                return null;
              },
            ),
          ),
          child: Center(
              child: Text(
            "Sign Up",
            style: TextStyle(
                color: app_theme_blue,
                fontFamily: 'general_sans',
                fontWeight: FontWeight.w400),
          )),
        ),
      ),
      SizedBox()
    ],
  );
}
