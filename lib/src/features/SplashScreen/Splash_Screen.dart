import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/images_string.dart';
import '../../constants/text_strings.dart';
import '../../utils/HelperClassWidget.dart';
import '../authenication/welcome.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(fanfantasylogo, color: Colors.white, height: 100, width: 100),
                Text(
                  appname,
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w500),
                ),
                addVerticalSpace(5),
                Text(
                  appTagLine.toUpperCase(),
                  style: GoogleFonts.ubuntu(
                    letterSpacing: 8.5,
                    color: Colors.yellow,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
