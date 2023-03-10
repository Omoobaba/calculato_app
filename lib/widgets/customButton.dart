import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    required this.onpressed,
  });

  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {

    // this sizes the button relative to the screen size of the user
    final size = MediaQuery.of(context).size;  
    return SizedBox(
      width: size.height * 0.09,
      height: size.height * 0.09,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: CircleBorder(),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
