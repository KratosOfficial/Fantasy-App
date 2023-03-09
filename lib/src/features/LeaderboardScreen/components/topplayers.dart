import 'package:fanfantasy/src/utils/HelperClassWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class topplayers extends StatelessWidget {
  const topplayers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 40,
            ),
            CircleAvatar(
              radius: 60,
            ),
            CircleAvatar(
              radius: 40,
            ),
          ],
        ),
        addVerticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  "ashish0079",
                  style: GoogleFonts.montserrat(color: Colors.white),
                ),
                Text(
                  "41502.50 pts",
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "sunny1164",
                  style: GoogleFonts.montserrat(color: Colors.white),
                ),
                Text(
                  "41765 pts",
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "MITHUNXI11",
                  style: GoogleFonts.montserrat(color: Colors.white),
                ),
                Text(
                  "41450 pts",
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
