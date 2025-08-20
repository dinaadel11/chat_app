import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/firebase_options.dart';
import 'package:newsapp/views/login_view.dart';
import 'package:newsapp/views/widget/register_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const ScholarChat(), // Wrap your app
    ),
  );
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginView': (context) => LoginView(),
        'RegisterView': (context) => RegisterView(),
      },
      initialRoute: 'LoginView',
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
