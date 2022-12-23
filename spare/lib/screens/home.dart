import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "package:flutter/material.dart";

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
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [CircleAvatar()],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Good morning",
                      )
                    ],
                  ),
                  Row(
                    children: [Text("Ugo")],
                  )
                ],
              ),
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
