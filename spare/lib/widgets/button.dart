import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';

class LoginSignUpButton extends StatelessWidget {
  final String text;
  final pressed;

  const LoginSignUpButton({
    super.key,
    required this.text,
    this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.08,
          child: ElevatedButton(
            onPressed: pressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Kolors.sendButton),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
