import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/constants/color.dart';

class BodyTab extends StatefulWidget {
  const BodyTab({super.key});

  @override
  State<BodyTab> createState() => _BodyTabState();
}

class _BodyTabState extends State<BodyTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                indicatorColor: Kolors.mainColor,
                labelColor: Kolors.mainColor,
                labelStyle: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                tabs: [
                  const Tab(
                    text: "Services",
                  ),
                  const Tab(text: "Transactions"),
                  TabBarView(children: [
                    Text("Send"),
                    Text("Pay Bills"),
                    Text("USSD"),
                  ])
                ],
              ),
            ],
          ),
        ),
        // Container(
        //   child: TabBarView(children: [
        //     Text("Send"),
        //     Text("Pay Bills"),
        //     Text("USSD"),
        //   ]),
        // )
      ],
    );
  }
}
