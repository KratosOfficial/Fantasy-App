import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/HelperClassWidget.dart';
import '../Widget/buildwalletitems.dart';

class walletbody extends StatelessWidget {
  const walletbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      "Balance",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "Add Money",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₹ 5013.88",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                buildwalletitems(
                  title: "Deposited",
                  amount: "₹ 0",
                ),
                buildwalletitems(
                  title: "Winnings",
                  amount: "₹ 4896.88",
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    decoration: BoxDecoration(
                      color: Color(0xffC41B24),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Withdraw",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                buildwalletitems(
                  title: "cash bonus",
                  amount: "₹ 117",
                ),
              ],
            ),
          ),
          addVerticalSpace(10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Recent Transactions",
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          addVerticalSpace(10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Refer & Earn",
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
