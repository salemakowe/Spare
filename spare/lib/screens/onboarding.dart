import "package:flutter/material.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spare/introscreens/onboard1.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OnboardPage1(),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.85),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: const WormEffect(
                dotHeight: 12,
                dotWidth: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
