import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/home_screen.dart';
import 'package:online_groceries_app/screens/login_screen.dart';
import 'package:online_groceries_app/screens/select_location.dart';
import 'package:online_groceries_app/screens/sign_in_screen.dart';
import 'package:online_groceries_app/screens/sign_in_with_number.dart';
import 'package:online_groceries_app/screens/splach_screen.dart';
import 'package:online_groceries_app/screens/verification_screen.dart';
import 'package:online_groceries_app/screens/welcome_screen.dart';

void main() {
  runApp(const OnlineGroceriesApp());
}

class OnlineGroceriesApp extends StatelessWidget {
  const OnlineGroceriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplachScreen.id: (context) => const SplachScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        SignInScreen.id: (context) => const SignInScreen(),
        SignInWithPhoneNumber.id: (context) => const SignInWithPhoneNumber(),
        VerificationScreen.id: (context) => const VerificationScreen(),
        SelectLocation.id: (context) => const SelectLocation(),
        LoginScreen.id: (context) =>  const LoginScreen(),
        HomeScreen.id: (context) =>  const HomeScreen(),
      },
      initialRoute: SplachScreen.id,
    );
  }
}
