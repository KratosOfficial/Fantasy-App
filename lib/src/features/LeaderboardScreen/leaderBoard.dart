import 'package:fanfantasy/src/features/LeaderboardScreen/components/topplayers.dart';
import 'package:fanfantasy/src/utils/HelperClassWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class leaderBoard extends StatelessWidget {
  const leaderBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffC41B24),
        appBar: AppBar(
          backgroundColor: Color(0xffC41B24),
          elevation: 0,
          title: Text("Leaderboard"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                ),
                child: Center(
                  child: Text(
                    "Women Premier League 2023 ",
                    style: GoogleFonts.montserrat(color: Colors.white),
                  ),
                ),
              ),
              addVerticalSpace(30),
              topplayers(),
            ],
          ),
        ));
  }
}
