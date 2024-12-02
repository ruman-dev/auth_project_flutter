import 'package:auth_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
