
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widgets/buildmatchcard.dart';
import '../../../constants/images_string.dart';
import '../../../utils/HelperClassWidget.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Color(0xffC41B24),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "nz - w vs bd - w".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Text(
                "02m : 00s Left",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "Full Match"),
              Tab(text: "Batting"),
              Tab(text: "Bowling"),
              Tab(text: "Reverse"),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                iconleaderboard,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Center(
                child: Text(
                  "₹ 5013.88",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                iconwallet,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:   CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mini Grand League", style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w500),),
                    Text("Less competition for easy winnings", style: GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w400),),
                  ],
                ),
               addVerticalSpace(10),
               buildmatchcard(amount: "10000", entryfee: "13", winner: "300", firstprize: "1000", maxteams: "20", spotsleft: "980", totalspots: "1,000", value: "20",),
                addVerticalSpace(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Winner Takes All", style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w500),),
                    Text("Everything To Play For", style: GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w400),),
                  ],
                ),
                addVerticalSpace(10),
                buildmatchcard(amount: "5500", entryfee: "1450", winner: "1", firstprize: "5500", maxteams: "1", spotsleft: "3", totalspots: "4", value: "10",),
                buildmatchcard(amount: "15000", entryfee: "5850", winner: "1", firstprize: "15000", maxteams: "1", spotsleft: "3", totalspots: "3", value: "0",),
                buildmatchcard(amount: "13000", entryfee: "4899", winner: "1", firstprize: "13000", maxteams: "1", spotsleft: "3", totalspots: "3", value: "0",),
                addVerticalSpace(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Head to Head", style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w500),),
                    Text("The Ultimate Faceoff", style: GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w400),),
                  ],
                ),
                addVerticalSpace(10),
                buildmatchcard(amount: "10000", entryfee: "5199", winner: "1", firstprize: "10000", maxteams: "1", spotsleft: "0", totalspots: "2", value: "100",),
                buildmatchcard(amount: "15000", entryfee: "5850", winner: "1", firstprize: "15000", maxteams: "1", spotsleft: "2", totalspots: "2", value: "0",),
                buildmatchcard(amount: "13000", entryfee: "4899", winner: "1", firstprize: "13000", maxteams: "1", spotsleft: "2", totalspots: "2", value: "0",),
                addVerticalSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
