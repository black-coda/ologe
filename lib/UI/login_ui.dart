import 'dart:convert';

// import 'package:damishop/env.dart';
// import 'package:damishop/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'utils/customTextFormField.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  // Future<List<Product>> product;

  bool isChecked = false;

  //change state of checkbox

  void checkBoxState(bool value) {
    return setState(() {
      isChecked = value;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    // await response from the server
    // http.Response response = await http
    //     .get(Uri.parse("http://192.168.0.106:8000/api/v1/product-list-fbv/"));
    // print(response.statusCode);

    // print(response.body);
    // Map data = jsonDecode(response.body);

    // var responses =
    //     await http.get(Uri.parse("http://127.0.0.1:8000/categories/"));
    // print(responses.body);
  }

  @override
  Widget build(BuildContext context) {
    //mediaQuery
    double widthOfScreen = MediaQuery.of(context).size.width;
    double heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // SliverAppBar(
            //   backgroundColor: Colors.transparent,
            //   expandedHeight: height_of_screen / 3.8,
            //   flexibleSpace: FlexibleSpaceBar(
            //     background: Image.asset(
            //       "assets/material-bg.png",
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: heightOfScreen / 3.8,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/material-bg.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          const Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 25),
                          const CustomTextField(
                              prefixIcon: Icons.email_outlined,
                              label: "Enter your email"),
                          const SizedBox(height: 20),
                          const CustomTextField(
                              prefixIcon: Icons.lock_outline,
                              label: "Enter your password"),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Checkbox(
                                      value: isChecked,
                                      onChanged: null,
                                      side: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "Remember me,",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "Forgot Password",
                                style: TextStyle(
                                    color: Color(0xffD2D2D0),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          const SizedBox(height: 50),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(widthOfScreen - 40, 55)),
                            child: const Text(
                              "Sign in",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 80),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Have an account?,",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  //TODO: To implement Navigate to login
                                },
                                child: Text(
                                  "Register Now",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 50),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
