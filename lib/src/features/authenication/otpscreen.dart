import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widgets/buildbutton.dart';
import '../../constants/images_string.dart';
import '../../constants/text_strings.dart';
import '../../utils/HelperClassWidget.dart';
import '../Dashboard.dart';

class otpscreen extends StatefulWidget {
  const otpscreen({Key? key}) : super(key: key);

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              addVerticalSpace(30),
                              Text(
                                "C O ",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold, fontSize: 50.0),
                              ),
                              Text(
                                "D E ",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold, fontSize: 50.0),
                              ),
                              Text("Verification".toUpperCase(),
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0)),
                              addVerticalSpace(10),
                              Text(otptext,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 13.0,
                                  )),
                              addVerticalSpace(20),
                              OtpTextField(
                                numberOfFields: 4,
                                  fillColor: Colors.black.withOpacity(0.1),
                                  filled: true,
                                fieldWidth: 50,
                                showFieldAsBox: true,
                                  onSubmit: (code) => print("OTP is => $code")),
                              addVerticalSpace(20),
                              InkWell( onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                              },
                                  child: buildbutton(text: "Submit", Width: "300")),
                              addVerticalSpace(30),
                            ],
                          ),
                        ),
                        Spacer(),
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

