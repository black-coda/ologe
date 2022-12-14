import 'package:flutter/material.dart';

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
      body: Container(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: TheCustomClipper(),
              child: Container(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            //TODO: To Add Image for user
            const Positioned(
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TheCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 3);
    var firstControlPoint = Offset(
        0,
        size.height /
            3.5); // adjust the height to move start of the first curve
    var firstEndPoint = Offset(
        size.width / 4.2,
        size.height / 3.5 +
            10); // adjust the width to add the end controll point and height to move end of the first curve

    var secControlPoint = Offset(size.width,
        size.height / 2.8); // adjust the height to move end of the second curve
    var secEndPoint = Offset(
        size.width,
        size.height / 3 -
            40); // adjust the width to add the right first controll point and height to move start of the second curve

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(
        secControlPoint.dx, secControlPoint.dy, secEndPoint.dx, secEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
