
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widgets/buildmatchesbox.dart';
import '../../constants/images_string.dart';
import '../../constants/text_strings.dart';
import '../../utils/HelperClassWidget.dart';
import '../WalletScreen/WalletScreen.dart';
import 'model/homedatamodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            title: Row(
              children: [
                Image.asset(
                  fanfantasylogo,
                  color: Colors.white,
                  width: 40,
                  height: 40,
                ),
                addHorizontalSpace(5),
                Column(
                  children: [
                    Text(
                      appname.toUpperCase(),
                      style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                    Text(
                      appTagLine.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          fontSize: 12, letterSpacing: 4),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  iconnotification,
                  width: 25,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, (MaterialPageRoute(builder: (context) => WalletScreen())));
                  },
                  child: SvgPicture.asset(
                    iconwallet,
                    width: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upcoming Matches",
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                addVerticalSpace(5),
                Expanded(
                  child: ListView.builder(
                      itemCount: Homedtamodel.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return buildmatchesbox(homedatamodel: Homedtamodel[index],);
                      }),
                ),
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
