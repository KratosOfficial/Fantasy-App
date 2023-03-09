
import 'package:fanfantasy/src/features/WalletScreen/WalletScreen.dart';
import 'package:fanfantasy/src/features/moreScreen/Model/MoreModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widgets/buildmoremodel.dart';
import '../../constants/images_string.dart';
import '../../constants/text_strings.dart';

class moreScreen extends StatefulWidget {
  const moreScreen({Key? key}) : super(key: key);

  @override
  State<moreScreen> createState() => _moreScreenState();
}

class _moreScreenState extends State<moreScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffC41B24),
        elevation: 0,
        toolbarHeight: 70,
        title: Text(more,
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
      body: ListView.builder(
        itemCount: moredta.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              buildmoremodel(moreModel: moredta[index]),
            ],
          );
        },
      )
    );
  }
}
