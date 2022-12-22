import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import "package:spare/constants/color.dart";
import 'package:spare/screens/home.dart';
import 'package:spare/screens/signup.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: ((context) => const SignUpPage()),
                ),
              );
            },
            icon: const Icon(
              Icons.close_outlined,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
              ],
            ),

            const SizedBox(height: 25),

            //OTP input
            Pinput(
              mainAxisAlignment: MainAxisAlignment.center,
              obscureText: false,
              keyboardType: TextInputType.number,
              defaultPinTheme: PinTheme(
                width: 50,
                height: 50,
                textStyle: GoogleFonts.inter(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              separator: const Text(
                " - ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              validator: (otp) {},
            ),
            const SizedBox(height: 15),

            //Didn't get OTP
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive an OTP? ",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Kolors.textColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend OTP",
                    style: GoogleFonts.inter(
                      color: Kolors.debtRed,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 20),

            //Button
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
      ),
    );
  }
}
