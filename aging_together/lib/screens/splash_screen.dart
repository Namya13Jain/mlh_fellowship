//import 'package:aging_together/screens/caretaker_feature/caretaker.dart';
//import 'package:aging_together/screens/home_screen.dart';
//import 'package:aging_together/screens/signin_screen.dart';
import 'package:aging_together/screens/select_role.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(251, 238, 230, 1),
      centered: true,
      splash: 'assets/images/logo_at.png',
      splashIconSize: 400,
      //nextScreen: const SignInScreen(),
      nextScreen: Roles(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
