import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/sign_in_screen.dart';
import 'package:online_groceries_app/screens/splach_screen.dart';
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
        SignInScreen.id:(context) => const  SignInScreen(),
      },
      initialRoute: SplachScreen.id,
    );
  }
}
