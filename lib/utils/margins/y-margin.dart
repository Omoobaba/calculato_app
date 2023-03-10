import 'package:flutter/material.dart';

class YMargin extends StatelessWidget {
  const YMargin({super.key, required this.value,});

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}
