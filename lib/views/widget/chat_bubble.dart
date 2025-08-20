import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24, right: 8),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
            color: primarycolor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )),
        child: Text(
          'i am a user ngyugfuyr jyr hugy',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
