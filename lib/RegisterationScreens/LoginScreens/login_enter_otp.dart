import 'package:flutter/material.dart';
import 'package:neo_pay/Presentation/NavigationScreen/navigationbar.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_enter_otp_widgets.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_enter_ph_number_widgets.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

class LoginEnterOtp extends StatefulWidget {
  final String contact_number;

  const LoginEnterOtp({super.key, required this.contact_number});

  @override
  State<LoginEnterOtp> createState() => _LoginEnterOtpState();
}

class _LoginEnterOtpState extends State<LoginEnterOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_with_back(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(displaysize.width * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verification code",
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
                "Please type your verification code send to\n+91${widget.contact_number}",
                style: TextStyle(
                    color: app_theme_blue2,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'general_sans',
                    fontSize: displaysize.width * .035),
              ),
              SizedBox(
                height: displaysize.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otptextform(context),
                  otptextform(context),
                  otptextform(context),
                  otptextform(context)
                ],
              )
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
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Don't receive the code? ",
                  style: TextStyle(
                      color: app_theme_blue2,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'general_sans',
                      fontSize: displaysize.width * .035),
                ),
                TextSpan(
                  text: "Resend",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: app_theme_blue2,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'general_sans',
                      fontSize: displaysize.width * .035),
                )
              ])),
              Container(
                  height: displaysize.height * .06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Navigatorbar()));
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
                      "Verify",
                      style: TextStyle(
                          color: white,
                          fontFamily: 'general_sans',
                          fontWeight: FontWeight.w400),
                    )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
