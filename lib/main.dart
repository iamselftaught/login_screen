import 'package:flutter/material.dart';
import 'package:lms_dark_001/features/login/presentation/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LMS Dark',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(59, 131, 247, 1)),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

