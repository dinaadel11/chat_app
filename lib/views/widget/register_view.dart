import 'package:flutter/material.dart';
import 'package:newsapp/views/widget/custom_button.dart';
import 'package:newsapp/widget/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset('assets/images/scholar.png'),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 1,
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
            CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              titel: 'Register',
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account  ?',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  ' log in',
                  style: TextStyle(color: Color(0xffC7EDE6)),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
