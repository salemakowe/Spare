import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/constants/color.dart';
import 'package:spare/widgets/textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.inter(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const BuildInputFields(
              hintText: "Email",
              isPassword: false,
              inputType: TextInputType.name,
              pIcon: Icon(
                Icons.alternate_email_outlined,
                color: Kolors.textColor,
              ),
            ),
            const SizedBox(height: 20),
            const BuildInputFields(
              hintText: "Enter your password",
              isPassword: true,
              inputType: TextInputType.text,
              pIcon: Icon(
                Icons.lock_outlined,
                color: Kolors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
