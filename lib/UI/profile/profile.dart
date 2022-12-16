import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'listProfile.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                //TDOD: Look for how to create overlapping widget
                Stack(
                  children: [
                    Container(
                      height: constraints.maxHeight / 4,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 6,
                      child: const CircleAvatar(
                        radius: 90,
                        backgroundColor: Colors.red,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Text(
                        "I am Monday".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        "mondaysolomon01@gmail.com",
                        style: TextStyle(
                          color: Color(0xff999A9F),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: constraints.maxHeight,
                  child: ListView(
                    children: const [
                      ListProfile(),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    final path = Path();
    path.lineTo(0, h);

    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
