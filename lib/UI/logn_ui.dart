import 'dart:convert';

// import 'package:damishop/env.dart';
// import 'package:damishop/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
    http.Response response = await http
        .get(Uri.parse("http://192.168.0.106:8000/api/v1/product-list-fbv/"));
    print(response.statusCode);

    print(response.body);
    Map data = jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    //mediaQuery
    var width_of_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 3,
            child: Form(
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
                    const SizedBox(
                      height: 25,
                    ),
                    const CustomTextField(
                        prefixIcon: Icons.email_outlined,
                        label: "Enter your email"),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                        prefixIcon: Icons.lock_outline,
                        label: "Enter your password"),
                    const SizedBox(
                      height: 15,
                    ),
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
                                  color: Theme.of(context).colorScheme.primary,
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
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(width_of_screen - 40, 55)),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
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
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            //TODO: To implement Navigate to login
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.prefixIcon,
    required this.label,
  }) : super(key: key);

  final IconData prefixIcon;

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.5,
          ),
        ),
        fillColor: Theme.of(context).colorScheme.primary,
        prefixIcon: Icon(
          prefixIcon,
        ),
        labelText: label,
        //TODO: To create validation whether email is confirm
        suffixIcon: const Icon(Icons.check_circle_sharp),
        suffixIconColor: Theme.of(context).colorScheme.primary,
        prefixIconColor: Theme.of(context).colorScheme.primary,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
