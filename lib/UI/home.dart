import 'package:damishop/UI/logn_ui.dart';
import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
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
                      iconEnabledColor: Theme.of(context).colorScheme.primary,
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
                //Search Bar

                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Search..."),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 99, 99, 101),
                    ),
                    fillColor: Color.fromARGB(223, 219, 219, 226),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Color(0xffEBEBED),
                      ),
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        color: Color(0xffEBEBED),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 47,
                ),

                //Dash feed

                Container(
                    height: 150,
                    decoration: const BoxDecoration(
                        color: Color(0xffEBE6E2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/banner_1.png",
                          alignment: Alignment.topRight,
                        ),
                        Row(
                          children: [
                            //TODO: Find Confirm Image for this place

                            Column(
                              children: [
                                const Text(
                                  "New Arrivals",
                                  style: TextStyle(
                                    color: Color(0xffA27757),
                                  ),
                                ),
                                const Text(
                                  "Omoge Premium",
                                  style: TextStyle(
                                    color: Color(0xffA27757),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffA27554),
                                    elevation: 0.2,
                                  ),
                                  child: const Text("Shop Now"),
                                ),
                                
                              ],
                            )
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
