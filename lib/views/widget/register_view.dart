import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/views/widget/custom_button.dart';
import 'package:newsapp/views/widget/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(
              height: 77,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 77,
            ),
            const Row(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomButton(
              titel: 'Register',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account  ?',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    ' log in',
                    style: TextStyle(color: Color(0xffC7EDE6)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
