import 'package:flutter/material.dart';

class XMargin extends StatelessWidget {
  const XMargin({super.key, required this.value,});

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value,
    );
  }
}
