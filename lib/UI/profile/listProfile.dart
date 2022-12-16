import 'package:flutter/material.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var randomColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        return SizedBox(
          child: ListTile(
            minLeadingWidth: 30.0,
            horizontalTitleGap: 100,
            iconColor: Colors.white,

            // Circle Avatar
            leading: CircleAvatar(
              radius: 18,
              backgroundColor: randomColor,
              foregroundColor: Colors.white,
              child: const Icon(
                Icons.favorite_sharp,
                size: 20,
              ),
            ),

            //TODO: Number of favourite
            title: const Text(
              "Favorites",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              "(5)",
              style: TextStyle(color: randomColor, fontWeight: FontWeight.w900),
            ),
            style: ListTileStyle.list,
          ),
        );
      },
    );
  }
}
