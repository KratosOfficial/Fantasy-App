
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/images_string.dart';
import '../../../utils/HelperClassWidget.dart';
import '../../authenication/welcome.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(kratosprofile),
            ),
            addVerticalSpace(10),
            Center(
                child: Text(
              "Kratos Official",
              style: GoogleFonts.montserrat(
                  fontSize: 18, fontWeight: FontWeight.w500),
            )),
            addVerticalSpace(5),
            Center(
                child: Text(
              "View Profile",
              style: GoogleFonts.montserrat(fontSize: 14, color: Colors.red),
            )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xffC41B24),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("₹ 5013.88",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                        Text("Total Balance",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: Colors.white)),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Add Cash",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Color(0xffC41B24),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(iconprofileactive,
                  width: 27, color: Colors.grey[700]),
              title: const Text('My Account '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconreferactive,
                  width: 27, color: Colors.grey[700]),
              title: const Text('Refer & Earn '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconleaderboardactive,
                  width: 27, color: Colors.grey[700]),
              title: const Text('Leaderboard '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconverifyactive,
                  width: 27, color: Colors.grey[700]),
              title: const Text('Verify Account '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconsupportactive,
                  width: 27, color: Colors.grey[700]),
              title: const Text('Support '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: SvgPicture.asset(iconmoresactive,
                  width: 27, color: Colors.grey[700]),
              title: const Text('More'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context) =>  Welcome())));
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffC41B24).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(iconmorelogout,
                          width: 27, color: Color(0xffC41B24)),
                      addHorizontalSpace(10),
                      Text(
                        "Log Out",
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Color(0xffC41B24),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text("App Version 1.0.0",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 14, color: Colors.grey[500])),
          ],
        ),
      ),
    );
  }
}
