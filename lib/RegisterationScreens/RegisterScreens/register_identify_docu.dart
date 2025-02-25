import 'package:flutter/material.dart';
import 'package:neo_pay/RegisterationScreens/LoginScreens/login_enter_ph_number_widgets.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

class RegisterIdentifyDocu extends StatefulWidget {
  const RegisterIdentifyDocu({super.key});

  @override
  State<RegisterIdentifyDocu> createState() => _RegisterIdentifyDocuState();
}

class _RegisterIdentifyDocuState extends State<RegisterIdentifyDocu> {
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
                "Identify Document",
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
                "Upload your proper identity document for\nverification.",
                style: TextStyle(
                    color: app_theme_blue2,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'general_sans',
                    fontSize: displaysize.width * .035),
              ),
              SizedBox(
                height: displaysize.height * .04,
              ),
              Container(
                  height: displaysize.height * .06,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(displaysize.height / 4),
                      border: Border.fromBorderSide(
                          BorderSide(color: app_theme_grey1))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.folder_outlined,
                              color: app_theme_grey,
                            ),
                            SizedBox(width: displaysize.width * .05),
                            Text(
                              "Upload file",
                              style: TextStyle(
                                  color: app_theme_grey,
                                  fontSize: displaysize.width * .035,
                                  fontFamily: 'general_sans',
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.file_upload_outlined,
                          color: app_theme_grey1,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Container(
            height: displaysize.height * .06,
            child: ElevatedButton(
              onPressed: () {},
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
                "Confirm",
                style: TextStyle(
                    color: white,
                    fontSize: 17,
                    fontFamily: 'general_sans',
                    fontWeight: FontWeight.w400),
              )),
            )),
      ),
    );
  }
}
