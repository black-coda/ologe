import 'package:damishop/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: !true,
        primaryColor: const Color(0xffE9963A),
        colorScheme: const ColorScheme.light(
          primary: Color(0xffE9963A),
          secondary: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      // routes: ,
      home: const SafeArea(
        child: MenuBar(),
      ),
    );
  }
}

// TODO: Continue from responsiveness
