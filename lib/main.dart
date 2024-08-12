import 'package:flutter/material.dart';
import 'package:lesson96_gorouter/router.dart';
import 'package:lesson96_gorouter/screens/first_screen.dart';
import 'package:lesson96_gorouter/screens/main_screen.dart';
import 'package:lesson96_gorouter/screens/second_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (ctx) => const MainScreen(),
        '/first-screen': (ctx) => const FirstScreen(),
        '/second-screen': (ctx) => const SecondScreen(),
      },
      // routerConfig: AppRoutes.config,
    );
  }
}

// http://flutterwithakmaljon.uz/first-screen