import 'package:flutter/material.dart';
import 'package:task_manager/app/resource/theme_manager.dart';
import 'package:task_manager/presentation/auth/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeManager.defaultTheme,
      home: const LoginPage(),
    );
  }
}