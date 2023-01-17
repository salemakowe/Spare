import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/constants/color.dart';
import 'package:spare/screens/bodytab.dart';
import 'package:spare/screens/history.dart';
import 'package:spare/screens/more.dart';
import 'package:spare/screens/notifications.dart';
import 'package:spare/widgets/addmoney.dart';

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
    // const List _pages = <Widget>[
    //   Icon(Icons.camera, size: 150),
    //   Icon(Icons.chat),
    //   Icon(Icons.message),
    //   Icon(Icons.call),
    //   Icon(Icons.logout),
    // ];

    // int _selectedIndex = 0;
    // // for the nav bar selected index.
    // // The selectedIndex holds the value of the currently selected item

    // void _onItemtapped(int index) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Add to wallet",
                            style: GoogleFonts.inter(),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle_outlined,
                              color: Kolors.mainColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
