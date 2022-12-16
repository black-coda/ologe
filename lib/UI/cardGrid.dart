import 'dart:math' as math;
import 'package:flutter/material.dart';

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
        childAspectRatio: 0.65,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                decoration: BoxDecoration(
                    color:
                        Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10.0))),
                padding: const EdgeInsets.only(bottom: .0, right: 0),
                child: Stack(
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

                    Positioned(
                      left: 24,
                      top: 28,
                      child: SizedBox(
                        height: 165,
                        child: Image.asset(
                          "assets/clothe_1.png",
                          // alignment: Alignment.topRight,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    // Contains Prices and Name of Cloth

                    Positioned(
                      width: constraints.maxWidth + 0.2,
                      bottom: 0,
                      height: 75,
                      // width: 50,
                      child: Container(
                        // alignment: Alignment.bottomCenter,
                        height: 50,
                        // width: 27,
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                          top: 8.0,
                          left: 8.0,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name of clothes
                            const Text(
                              "Duchess Swiss",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 1),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Price of Material
                                  Text(
                                    "N20,000",
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),

                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    //TODO: To implement add to cart
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_shopping_cart_rounded,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
        childCount: 10,
      ),
    );
  }
}
