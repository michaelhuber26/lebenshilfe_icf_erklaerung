import 'package:flutter/material.dart';
import 'package:lebenshilfe_icf_erklaerung/screens/startscreen/startscreen.dart';
import 'package:lebenshilfe_icf_erklaerung/theme/style.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      darkTheme: appTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
      },
    );
  }
}
