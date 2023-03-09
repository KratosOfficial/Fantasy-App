
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/images_string.dart';
import '../../constants/text_strings.dart';
import '../../utils/HelperClassWidget.dart';

class MyContestScreen extends StatefulWidget {
  const MyContestScreen({Key? key}) : super(key: key);

  @override
  State<MyContestScreen> createState() => _MyContestScreenState();
}

class _MyContestScreenState extends State<MyContestScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: Colors.white, //<-- SEE HERE
                child: _tabBar,
              ),
            ),
            backgroundColor: Color(0xffC41B24),
            elevation: 0,
            toolbarHeight: 70,
            title: Text(mycontest,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  iconnotification,
                  width: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  contestpara,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                  ),
                ),
                addVerticalSpace(20),
                Image.asset(
                  mycontestlogo,
                  width: 250,
                  height: 250,
                ),
                addVerticalSpace(20),
                Text(
                  contestpara2,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                  ),
                ),
                addVerticalSpace(20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(contestbutton.toUpperCase(),
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )),
    );
  }

  TabBar get _tabBar => TabBar(
        labelColor: Color(0xffC41B24),
        indicatorColor: Color(0xffC41B24),
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
        tabs: [
          Tab(
            icon: Icon(Icons.sports_cricket),
            text: "Cricket",
          ),
          Tab(
            icon: Icon(Icons.live_tv_outlined),
            text: "Live",
          ),
          Tab(
            icon: Icon(Icons.sports_football),
            text: "Football",
          ),
          Tab(
            icon: Icon(Icons.sports_basketball_rounded),
            text: "Basketball",
          ),
          Tab(
            icon: Icon(Icons.sports_kabaddi),
            text: "Kabaddi",
          ),
          Tab(
            icon: Icon(Icons.sports_handball),
            text: "Handball",
          ),
          Tab(
            icon: Icon(Icons.sports_hockey),
            text: "Hockey",
          ),
          Tab(
            icon: Icon(Icons.sports_baseball),
            text: "Baseball",
          ),
        ],
      );
}
