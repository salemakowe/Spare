import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:spare/constants/color.dart';
import 'package:spare/screens/home.dart';
import 'package:spare/screens/signup.dart';
import 'package:spare/widgets/button.dart';
import 'package:spare/widgets/textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool _passwordVisible;
  final bool _isRememberMe = false;

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
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            //Email field
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

            //Checkbox
            Row(
              children: [
                Checkbox(
                  value: _isRememberMe,
                  onChanged: (value) => setState(() {
                    _isRememberMe != value;
                  }),
                ),
                const Text("Remember me"),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),

            //Button
            LoginSignUpButton(
              text: "Login",
              pressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: ((context) => const HomePage()),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: ((context) => const SignUpPage()),
                      ),
                    );
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
