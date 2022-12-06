import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';

class BuildInputFields extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final inputType;
  final pIcon;
  final sIcon;

  const BuildInputFields({
    super.key,
    required this.hintText,
    required this.isPassword,
    required this.inputType,
    this.pIcon,
    this.sIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: inputType,
      style: GoogleFonts.inter(
        fontSize: 15,
      ),
      decoration: InputDecoration(
        prefixIcon: pIcon,
        suffixIcon: sIcon,
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: Kolors.textColor,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Color(0xffdadada)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Kolors.sendButton),
        ),
      ),
    );
  }
}
