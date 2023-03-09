import 'package:fanfantasy/src/constants/images_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/HelperClassWidget.dart';

class walletheader extends StatelessWidget {
  const walletheader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: Color(0xffC41B24),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(kratosprofile)
          ),
          addHorizontalSpace(20),
          Column(
            children: [
              Text(
                "kratos official".toUpperCase(),
                style: GoogleFonts.montserrat(
                    fontSize: 16, color: Colors.white),
              ),
              addVerticalSpace(6),
              Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("Edit Profile")),
            ],
          ),
        ],
      ),
    );
  }
}
