import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/login_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => ScholarChat(), // Wrap your app
      ),
    );

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginView': (context) => const LoginView(),
      },
      initialRoute: 'LoginView',
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
    );
  }
}
