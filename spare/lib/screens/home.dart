import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/constants/color.dart';
import 'package:spare/screens/bodytab.dart';
import 'package:spare/screens/history.dart';
import 'package:spare/screens/more.dart';
import 'package:spare/screens/notifications.dart';
import 'package:spare/widgets/addmoney.dart';
import 'package:spare/widgets/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // //to build the body of the page when the selected index is tapped
  // final _buildNavBody = const [
  //   HomePage(),
  //   HistoryPage(),
  //   NotificationsPage(),
  //   MorePage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //User's avatar
                Row(
                  children: [
                    Column(
                      children: const [CircleAvatar()],
                    ),

                    const SizedBox(width: 4),

                    //Greetings and User's name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Good morning,",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Ugo",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),

                //notification bell
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          semanticLabel: "Add wallet",
                          Icons.add_circle_outlined,
                          color: Kolors.mainColor,
                        ))
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),

            //Container for the card
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Kolors.mainColor,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "spare balance",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "N10,000",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            //Services and Transaction

            const BodyTab(),
          ],
        ),
      ),

      //Bottom Navigation
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
