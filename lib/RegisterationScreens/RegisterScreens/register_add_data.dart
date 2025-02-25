import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_pay/RegisterationScreens/RegisterScreens/register_add_data_widgets.dart';
import 'package:neo_pay/RegisterationScreens/RegisterScreens/register_identify_docu.dart';
import 'package:neo_pay/global/colors.dart';
import 'package:neo_pay/main.dart';

class RegisterAddData extends StatefulWidget {
  const RegisterAddData({super.key});

  @override
  State<RegisterAddData> createState() => _RegisterAddDataState();
}

class _RegisterAddDataState extends State<RegisterAddData> {
  bool current = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: displaysize.height * .05,
              right: displaysize.width * .04,
              left: displaysize.width * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: app_theme_bg,
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: displaysize.width * .04),
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
                                borderRadius: BorderRadius.circular(
                                    displaysize.width / 4),
                                border: Border.fromBorderSide(BorderSide(
                                    width: 1, color: app_theme_grey1))),
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
              Text(
                "Create a new account",
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
                "Please fill the information correctly to create your\nnew account.",
                style: TextStyle(
                    color: app_theme_blue2,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'general_sans',
                    fontSize: displaysize.width * .035),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                      radius: displaysize.height * .07,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: displaysize.width * .035,
                        color: app_theme_blue2,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterIdentifyDocu()));
                        },
                        child: Text(
                          "Add Image",
                          style: TextStyle(
                              fontSize: displaysize.width * .035,
                              color: app_theme_blue2,
                              fontFamily: "general_sans",
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: displaysize.height * .04,
                  ),
                  Register_input_field(
                      fieldname: "Name",
                      prefixicon: Icon(Icons.person_4_outlined)),
                  SizedBox(
                    height: displaysize.height * .025,
                  ),
                  Register_input_field(
                      fieldname: "Email ID",
                      prefixicon: Icon(Icons.mail_outline)),
                  SizedBox(
                    height: displaysize.height * .025,
                  ),
                  Register_input_field(
                      inputformat: [
                        LengthLimitingTextInputFormatter(10),
                      ],
                      keyboardtype: TextInputType.numberWithOptions(),
                      fieldname: "Date of birth",
                      prefixicon: Icon(Icons.calendar_month_outlined)),
                  SizedBox(
                    height: displaysize.height * .025,
                  ),
                  Register_input_field(
                      inputformat: [
                        LengthLimitingTextInputFormatter(12),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardtype: TextInputType.number,
                      fieldname: "Aadhaar Number",
                      prefixicon: Icon(Icons.add_card_outlined)),
                  SizedBox(
                    height: displaysize.height * .025,
                  ),
                  Register_input_field(
                      fieldname: "Password",
                      prefixicon: Icon(Icons.lock_outline_rounded)),
                  SizedBox(
                    height: displaysize.height * .025,
                  ),
                  Register_input_field(
                      fieldname: "Confirm password",
                      prefixicon: Icon(Icons.lock_outline_rounded)),
                  SizedBox(
                    height: displaysize.height * .025,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: app_theme_blue,
                        value: current,
                        onChanged: (value) {
                          current = !value!;
                        },
                      ),
                      SizedBox(width: 10),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Agree to ",
                            style: TextStyle(
                                color: app_theme_blue2,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'general_sans',
                                fontSize: displaysize.width * .035),
                          ),
                          TextSpan(
                            text: "Terms and Conditions",
                            style: TextStyle(
                                color: app_theme_blue,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'general_sans',
                                fontSize: displaysize.width * .035),
                          )
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: displaysize.height * .04,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: displaysize.height * .06,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                    splashFactory: InkSplash.splashFactory,
                                    elevation: WidgetStatePropertyAll(0),
                                    backgroundColor:
                                        WidgetStatePropertyAll(app_theme_blue))
                                .copyWith(
                              overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>(
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
                              "Submit",
                              style: TextStyle(
                                  color: white,
                                  fontFamily: 'general_sans',
                                  fontWeight: FontWeight.w400),
                            )),
                          )),
                      SizedBox(
                        height: displaysize.height * .02,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                              color: app_theme_blue2,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'general_sans',
                              fontSize: displaysize.width * .035),
                        ),
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: app_theme_blue2,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'general_sans',
                              fontSize: displaysize.width * .035),
                        )
                      ])),
                      SizedBox(
                        height: displaysize.height * .02,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
