import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/constants/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      //body
      body: Column(
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
                        Icons.notifications_outlined,
                        color: Kolors.sendButton,
                      ))
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home),
          Icon(Icons.account_balance_wallet_outlined),
          Icon(Icons.send_outlined),
          Icon(Icons.sms_outlined),
        ],
        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
