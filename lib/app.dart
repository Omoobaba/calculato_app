import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

class AptCal extends StatelessWidget {
  const AptCal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AptLearn Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Noto',
      ),
      home: CalcScreen(),
    );
  }
}