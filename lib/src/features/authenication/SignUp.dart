import 'dart:ui';

import 'package:fanfantasy/src/features/authenication/otpscreen.dart';
import 'package:fanfantasy/src/features/authenication/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widgets/buildbutton.dart';
import '../../common_widgets/buildtextfiled.dart';
import '../../constants/images_string.dart';
import '../../constants/text_strings.dart';
import '../../utils/HelperClassWidget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              splashScreenBackground,
              fit: BoxFit.cover,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffC41B24).withOpacity(0.7),
              ),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      appname.toUpperCase(),
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 5,
                      ),
                    ),
                    Text(
                      appTagLine.toUpperCase(),
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 8,
                      ),
                    ),
                    addVerticalSpace(50),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addVerticalSpace(10),
                          Text(
                            signup.toUpperCase(),
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 5,
                            ),
                          ),
                          addVerticalSpace(10),
                          buildtextfield(
                              hintText: "Enter Refer Code",
                              labelText: "Referral Code (Optional)",
                              icon: Icons.phone_android),
                          buildtextfield(
                              hintText: "Enter Mobile Number",
                              labelText: "Mobile Number",
                              icon: Icons.wifi_calling_3_sharp),
                          buildtextfield(
                              hintText: "Enter Your Email",
                              labelText: "Email Address",
                              icon: Icons.email_outlined),
                          buildtextfield(
                              hintText: "Enter Your Password",
                              labelText: "Password",
                              icon: Icons.password_outlined),
                          buildtextfield(
                              hintText: "Enter Your Password",
                              labelText: "Confirm Password",
                              icon: Icons.password_outlined),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.red,
                                side: BorderSide(color: Colors.grey),
                                value: this.value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: authregister,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 12,
                                    )),
                                TextSpan(
                                    text: " T&C",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ])),
                            ],
                          ),
                          Center(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => otpscreen()));
                                  },
                                  child:
                                      buildbutton(text: "Next", Width: "300")))
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Welcome()));
                      },
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: authalready,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 13,
                            )),
                        TextSpan(
                            text: "log in",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
