import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/home_screen.dart';
import 'package:online_groceries_app/screens/login_screen.dart';
import 'package:online_groceries_app/screens/navigation_screen.dart';
import 'package:online_groceries_app/screens/product_detailes.dart';
import 'package:online_groceries_app/screens/products_screen.dart';
import 'package:online_groceries_app/screens/select_location_screen.dart';
import 'package:online_groceries_app/screens/sign_in_screen.dart';
import 'package:online_groceries_app/screens/number_screen.dart';
import 'package:online_groceries_app/screens/sign_up_screen.dart';
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
        NumberScreen.id: (context) =>  NumberScreen(),
        VerificationScreen.id: (context) =>  VerificationScreen(),
        SelectLocation.id: (context) => const SelectLocation(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) =>  SignUpScreen(),
        NavigationScreen.id: (context) => const NavigationScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ProductsScreen.id: (context) =>  ProductsScreen(),
        ProductDetailes.id: (context) =>  ProductDetailes(),
      },
      initialRoute: NavigationScreen.id,
    );
  }
}
