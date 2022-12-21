import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import "package:spare/constants/color.dart";
import 'package:spare/screens/home.dart';

import '../widgets/button.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({super.key});

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/otp.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "OTP Verification",
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter the OTP sent to ",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Kolors.textColor,
                ),
              ),
              Text(
                "1234567890",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [],
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginSignUpButton(
                text: "Verify & Proceed",
                pressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => const HomePage()),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
