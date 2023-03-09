import 'package:fanfantasy/src/features/LeaderboardScreen/leaderBoard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/images_string.dart';
import 'accountScreen/Components/MyDrawer.dart';
import 'homeScreen/HomeScreen.dart';
import 'moreScreen/moreScreen.dart';
import 'myContestScreen/MyContestScreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0) {
      return HomeScreen();
    } else if (selectedIndex == 1) {
      return MyContestScreen();
    } else if (selectedIndex == 2) {
      return MyDrawer();
    } else if (selectedIndex == 3) {
      return moreScreen();
    }
    return HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => leaderBoard()));
        },
        elevation: 5,

        backgroundColor: Color(0xffC41B24),
        child: SvgPicture.asset(
          iconleaderboard,
          width: 30,
          color: Colors.white,
        ),
      ),
      body: getFragment(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        selectedIconTheme: const IconThemeData(color: Color(0xffC41B24)),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                iconhome,
                width: 30,
                color: Colors.grey,
              ),
              label: "Home",
              activeIcon: SvgPicture.asset(iconhomeactive,
                  width: 30, color: Color(0xffC41B24))),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              iconmycontest,
              width: 30,
              color: Colors.grey,
            ),
            label: "My Contest",
            activeIcon: SvgPicture.asset(iconmycontestactive,
                width: 30, color: Color(0xffC41B24)),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              iconprofile,
              width: 30,
              color: Colors.grey,
            ),
            label: "My Profile",
            activeIcon: SvgPicture.asset(iconprofileactive,
                width: 30, color: Color(0xffC41B24)),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              iconmore,
              width: 30,
              color: Colors.grey,
            ),
            label: "More",
            activeIcon: SvgPicture.asset(iconmoreactive,
                width: 30, color: Color(0xffC41B24)),
          ),
        ],
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
