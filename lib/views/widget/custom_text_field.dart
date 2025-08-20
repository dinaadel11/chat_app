import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField.CustomTextFormField(
      {super.key, required this.hintText, this.onchanged});
  final String hintText;
  void Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
