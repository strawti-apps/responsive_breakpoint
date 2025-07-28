import 'package:example/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleResponsiveApp());
}

class ExampleResponsiveApp extends StatelessWidget {
  const ExampleResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF6B35),
          brightness: Brightness.light,
        ),
        fontFamily: 'Inter',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      title: 'Bace - News App',
      home: const HomePage(),
    );
  }
}
