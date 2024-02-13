import 'package:flutter/material.dart';
import 'package:reddit/features/auth/screen/login_screen.dart';
import 'package:reddit/theme/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Reddit',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
