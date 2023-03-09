import 'package:fanfantasy/src/utils/HelperClassWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buildmatchcard extends StatelessWidget {
  final String amount,
      entryfee,
      spotsleft,
      totalspots,
      firstprize,
      maxteams,
      winner;
final String value;
  const buildmatchcard(
      {Key? key,
        required this.value,
      required this.amount,
      required this.entryfee,
      required this.winner,
      required this.firstprize,
      required this.maxteams,
      required this.spotsleft,
      required this.totalspots})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Prize Pool",
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 15,
                    ),
                    Text(
                      "Guaranteed",
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                    addHorizontalSpace(5),
                    Icon(
                      Icons.ac_unit,
                      color: Colors.orange,
                      size: 15,
                    ),
                    Text(
                      "Winner: $winner",
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
            addVerticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "₹ $amount",
                  style: GoogleFonts.montserrat(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      "Entry Fee",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    addHorizontalSpace(10),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        color: Color(0xffC41B24),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        " ₹ $entryfee",
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
            addVerticalSpace(10),
            LinearProgressIndicator(
              value: value == "0" ? 0.0 : double.parse(value) / 100,
              backgroundColor: Colors.red[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            addVerticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$spotsleft Spot Left",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red),
                ),
                Text(
                  "$totalspots spots",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            addVerticalSpace(10),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1st Prize: ₹$firstprize"),
                  Text("Max Teams: $maxteams"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
