import 'package:flutter/material.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_enter_otp.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_enter_ph_number_widgets.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

class LoginEnterPhNumber extends StatefulWidget {
  const LoginEnterPhNumber({super.key});

  @override
  State<LoginEnterPhNumber> createState() => _LoginEnterPhNumberState();
}

class _LoginEnterPhNumberState extends State<LoginEnterPhNumber> {
  TextEditingController contact_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: appbar_with_back(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(displaysize.width * .04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your phone number",
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
                  "Provide your phone number to log in and access\nyour account.",
                  style: TextStyle(
                      color: app_theme_blue2,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'general_sans',
                      fontSize: displaysize.width * .035),
                ),
                SizedBox(
                  height: displaysize.height * .04,
                ),
                ph_number_input_field(
                    context, 'Phone Number', contact_controller)
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: displaysize.width * .04),
          child: SizedBox(
            height: displaysize.height * .15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: displaysize.height * .06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginEnterOtp(
                                    contact_number: contact_controller.text)));
                      },
                      style: ButtonStyle(
                              splashFactory: InkSplash.splashFactory,
                              elevation: WidgetStatePropertyAll(0),
                              backgroundColor:
                                  WidgetStatePropertyAll(app_theme_blue))
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
                        "Next",
                        style: TextStyle(
                            color: white,
                            fontFamily: 'general_sans',
                            fontWeight: FontWeight.w400),
                      )),
                    )),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                        color: app_theme_blue2,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'general_sans',
                        fontSize: displaysize.width * .035),
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: app_theme_blue2,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'general_sans',
                        fontSize: displaysize.width * .035),
                  )
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
