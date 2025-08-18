import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.titel});
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          titel,
          style: TextStyle(fontSize: 18),
        ),
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}
