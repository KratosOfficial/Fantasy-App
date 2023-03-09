import 'dart:ui';
import 'package:fanfantasy/src/constants/images_string.dart';
import 'package:fanfantasy/src/utils/HelperClassWidget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widgets/buildbutton.dart';
import '../../common_widgets/buildtextfiled.dart';
import '../../constants/text_strings.dart';
import '../Dashboard.dart';
import 'SignUp.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
                            login.toUpperCase(),
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 5),
                          ),
                          addVerticalSpace(10),
                          Text(
                            authtagline.toUpperCase(),
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 5),
                          ),
                          addVerticalSpace(20),
                          buildtextfield(
                              hintText: 'Enter your email address',
                              labelText: "Email",
                              icon: Icons.email),
                          buildtextfield(
                              hintText: "Enter your password",
                              labelText: "Password",
                              icon: Icons.password_outlined),
                          addVerticalSpace(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(forgotpassword,
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffC41B24),
                                    fontSize: 13,
                                  )),
                            ],
                          ),
                          addVerticalSpace(25),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dashboard()));
                              },
                              child: buildbutton(text: "Login", Width: "200"),
                            ),
                          ),
                          addVerticalSpace(25),
                          Center(
                            child: Text(author,
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 13,
                                )),
                          ),
                          addVerticalSpace(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/google.png",
                                width: 30,
                                height: 30,
                                color: Colors.red,
                              ),
                              addHorizontalSpace(15),
                              SvgPicture.asset(
                                "assets/icons/facebook.svg",
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          addVerticalSpace(30),
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      child: RichText(text: TextSpan(children: [
                        TextSpan(
                            text: authalcreate,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 13,
                            )),
                        TextSpan(
                            text: "Sign Up",
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
