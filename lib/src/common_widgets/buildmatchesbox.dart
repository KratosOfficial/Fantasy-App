
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/homeScreen/Additionals/MatchScreen.dart';
import '../features/homeScreen/model/homedatamodel.dart';
import '../utils/HelperClassWidget.dart';

class buildmatchesbox extends StatelessWidget {
  final Homedatamodel homedatamodel;

  const buildmatchesbox({Key? key, required this.homedatamodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MatchScreen()));
      },
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.notification_add_outlined,
                        color: Colors.black, size: 15.0),
                    Text(
                      homedatamodel.title,
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                    Icon(Icons.more_horiz, color: Colors.black, size: 15.0),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 10,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage(homedatamodel.Team1logo,),

                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.5),
                            child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff0061ff).withOpacity(0.2),
                                    Color(0xff60efff).withOpacity(0.1),
                                    Colors.white,
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  addHorizontalSpace(45),
                                  Text(
                                    homedatamodel.Team1.toUpperCase(),
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(homedatamodel.time,
                      style: GoogleFonts.montserrat(
                          fontSize: 12, color: Colors.red)),
                  Stack(
                    children: [
                      Positioned(
                          top: 0,
                          right: 10,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                            AssetImage(homedatamodel.Team2logo,),

                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.5),
                        child: Container(
                          width: 120,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white,
                                Color(0xfff7ba2c).withOpacity(0.1),
                                Color(0xffea5459).withOpacity(0.2),
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                homedatamodel.Team2.toUpperCase(),
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              addHorizontalSpace(45),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(homedatamodel.Team1full,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black)),
                    Text(homedatamodel.Team2full,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black)),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Text("Mega",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12, color: Colors.white))),
                      addHorizontalSpace(10),
                      Text(homedatamodel.Prize,
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.green)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
