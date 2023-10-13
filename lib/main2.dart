import 'package:cleaning/login_page.dart';
import 'package:cleaning/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding(),
      theme: ThemeData(primaryColor: Colors.deepPurple),
    );
  }
}
