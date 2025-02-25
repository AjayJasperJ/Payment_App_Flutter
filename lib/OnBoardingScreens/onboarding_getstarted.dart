import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_pay/OnBoardingScreens/onboarding_bottomsheet.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

SizedBox GetStarted(BuildContext context) {
  return SizedBox(
    height: displaysize.height * .08,
    child: Padding(
      padding: EdgeInsets.only(
          bottom: displaysize.height * .02,
          left: displaysize.height * .02,
          right: displaysize.height * .02),
      child: ElevatedButton(
        onPressed: () {
          ShowCustomSheet(context);
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get Started",
              style: TextStyle(
                  fontSize: displaysize.height * .020,
                  color: white,
                  fontFamily: 'general_sans',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              CupertinoIcons.arrow_right,
              size: displaysize.height * .025,
              color: white,
            )
          ],
        ),
      ),
    ),
  );
}
