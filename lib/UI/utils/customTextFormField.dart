import 'package:flutter/material.dart';

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
            width: 1.0,
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
