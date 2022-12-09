// import 'package:damishop/UI/logn_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'cardGrid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void dropDownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropDownValue = selectedValue;
      });
    }
  }

  String _dropDownValue = 'Culture';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black87,
                          child: Icon(
                            Icons.person,
                            color: Theme.of(context).colorScheme.primary,
                            size: 25,
                          ),
                        ),
                        DropdownButton(
                          // value: "sd",
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          iconEnabledColor:
                              Theme.of(context).colorScheme.primary,
                          items: const [
                            DropdownMenuItem(
                              value: "Culture",
                              child: Text("Culture"),
                            ),
                            DropdownMenuItem(
                              value: "Culture",
                              child: Text("Aso-ebi Linen"),
                            ),
                            DropdownMenuItem(
                              value: "Culture",
                              child: Text("Party"),
                            ),
                          ],
                          onChanged: dropDownCallback,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    // SEARCH BAR

                    const SearchTextFormField(),

                    const SizedBox(
                      height: 47,
                    ),

                    //Dash feed

                    const DashFeed(),

                    const SizedBox(
                      height: 30,
                    ),

                    _highlightRow(),

                    // CARDS

                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const CardGrids()
            ],
          ),
        ),
      ),
    );
  }

  Row _highlightRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "New Arrival 🔥",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}

class DashFeed extends StatelessWidget {
  const DashFeed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 220,
      decoration: const BoxDecoration(
          color: Color(0xffEBE6E2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          //TODO: Find Confirm Image for this place
          Image.asset(
            "assets/banner_1.png",
            alignment: Alignment.topRight,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arrivals",
                style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 127, 83, 52),
                  fontSize: 13,
                ),
              ),
              const Text(
                "Omoge Premium",
                style: TextStyle(
                  color: Color(0xffA27757),
                  fontFamily: 'DM',
                  fontSize: 23,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffA27554),
                    side: const BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    elevation: 0.2,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    )),
                child: const Text("Shop Now"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Ankara",
        hintStyle: TextStyle(
          fontSize: 13,
          color: Theme.of(context).colorScheme.primary,
        ),
        label: Text(
          "Search",
          style: TextStyle(
            fontSize: 13,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        labelStyle: const TextStyle(
          color: Color(0xffEAEAEC),
        ),
        fillColor: const Color(0xffEAEAEC),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            width: 1.0,
            color: Color(0xffEBEBED),
          ),
        ),
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            color: Color(0xffEBEBED),
          ),
        ),
      ),
    );
  }
}

