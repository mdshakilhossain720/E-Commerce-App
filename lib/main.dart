import 'package:flutter/material.dart';

import 'screen/login/login.dart';
import 'screen/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LoginScreen(),
      theme: ThemeData(
        // primaryColor: Color(0xffaf7373),
        // visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    );
  }
}

