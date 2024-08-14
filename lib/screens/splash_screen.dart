import 'package:flutter/material.dart';
import 'package:job_finder/screens/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    onInitilizationComplete();
    super.initState();
  }

  void onInitilizationComplete() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (ctx) =>
                    //
                    const OnBoardingScreen()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Image.asset(
            'assets/images/splash_logo.png',
          ),
        ),
      ),
    );
  }
}
