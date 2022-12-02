import 'package:damishop/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xffE9963A),
        colorScheme: const ColorScheme.light(
          primary: Color(0xffE9963A),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // routes: ,
      home: const SafeArea(child: MenuBar()),
    );
  }
}