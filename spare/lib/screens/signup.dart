import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/screens/login.dart';
import 'package:spare/screens/verifynumber.dart';

import '../constants/color.dart';
import '../widgets/button.dart';
import '../widgets/textfields.dart';
import 'home.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (() => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (((context) => const LoginPage())),
                ),
              )),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/dollar.png",
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create an Account",
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //First name
              const BuildInputFields(
                hintText: "First name",
                isPassword: false,
                inputType: TextInputType.name,
                pIcon: Icon(Icons.person_outline, color: Kolors.textColor),
              ),
              const SizedBox(height: 20),

              //Last name
              const BuildInputFields(
                hintText: "Last name",
                isPassword: false,
                inputType: TextInputType.name,
                pIcon: Icon(Icons.person_outline, color: Kolors.textColor),
              ),
              const SizedBox(height: 20),

              //Phone number
              const BuildInputFields(
                hintText: "Phone Number",
                isPassword: false,
                inputType: TextInputType.phone,
                pIcon: Icon(Icons.phone_outlined, color: Kolors.textColor),
              ),
              const SizedBox(height: 20),

              //Email field
              const BuildInputFields(
                hintText: "Email",
                isPassword: false,
                inputType: TextInputType.emailAddress,
                pIcon: Icon(Icons.alternate_email_outlined,
                    color: Kolors.textColor),
              ),
              const SizedBox(height: 20),

              //Password field
              BuildInputFields(
                hintText: "Enter your password",
                isPassword: _passwordVisible ? false : true,
                inputType: TextInputType.text,
                pIcon: const Icon(Icons.lock_outlined, color: Kolors.textColor),
                sIcon: IconButton(
                  icon: Icon(_passwordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                  onPressed: () => setState(() {
                    _passwordVisible = !_passwordVisible;
                  }),
                ),
              ),

              const SizedBox(height: 20),

              //Country
              const BuildInputFields(
                hintText: "Country",
                isPassword: false,
                inputType: TextInputType.text,
                pIcon: Icon(Icons.person_outline, color: Kolors.textColor),
              ),
              const SizedBox(height: 20),

              //Button
              LoginSignUpButton(
                text: "Sign up",
                pressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => const VerifyNumber()),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: ((context) => const LoginPage()),
                        ),
                      );
                    },
                    child: const Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
