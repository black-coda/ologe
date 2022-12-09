import 'package:flutter/material.dart';
import 'dart:math' as math;

class CardGrids extends StatefulWidget {
  const CardGrids({super.key});

  @override
  State<CardGrids> createState() => _CardGridsState();
}

class _CardGridsState extends State<CardGrids> {
  // Color currentColor = Theme.of(context).colorScheme.primary;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            padding: const EdgeInsets.only(bottom: 2.0, right: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // height: 29,

                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.8),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),

                      //Padding for favorite button
                      padding: const EdgeInsets.all(10.0),

                      // Favorite Icon
                      child: Icon(
                        Icons.favorite_border_sharp,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),

                // Image goes here

                SizedBox(
                  height: 175,
                  child: Image.asset(
                    "assets/clothe_1.png",
                    // alignment: Alignment.topRight,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        },
        childCount: 10,
      ),
    );
  }
}
