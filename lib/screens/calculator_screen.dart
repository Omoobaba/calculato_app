// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator_app/utils/calculator_functions.dart';
import 'package:calculator_app/utils/margins/y-margin.dart';
import 'package:flutter/material.dart';

import '../widgets/customButton.dart';

class CalcScreen extends StatefulWidget {
  CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  final CalculatorFunctions calculatorFunctions = CalculatorFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              calculatorFunctions.expression,
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            YMargin(value: 20),
            Text(
              calculatorFunctions.result,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            YMargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  buttonText: 'C',
                  buttonColor: Colors.grey,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('C');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: 'del',
                  buttonColor: Colors.grey,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('del');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '%',
                  buttonColor: Colors.grey,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('%');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '/',
                  buttonColor: Colors.orange,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('/');
                    });
                  },
                  textColor: Colors.white,
                ),
              ],
            ),
            YMargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  buttonText: '7',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('7');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '8',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('8');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: "9",
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('9');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '*',
                  buttonColor: Colors.orange,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('*');
                    });
                  },
                  textColor: Colors.white,
                ),
              ],
            ),
            YMargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  buttonText: '4',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('4');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '5',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('5');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: "6",
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('6');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '-',
                  buttonColor: Colors.orange,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('-');
                    });
                  },
                  textColor: Colors.white,
                ),
              ],
            ),
            YMargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  buttonText: '1',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('1');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '2',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('2');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: "3",
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('3');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '+',
                  buttonColor: Colors.orange,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('+');
                    });
                  },
                  textColor: Colors.white,
                ),
              ],
            ),
            YMargin(value: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  buttonText: '0',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('0');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '.',
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('.');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: "00",
                  buttonColor: Colors.white12,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('00');
                    });
                  },
                  textColor: Colors.white,
                ),
                CustomButton(
                  buttonText: '=',
                  buttonColor: Colors.orange,
                  onpressed: () {
                    setState(() {
                      calculatorFunctions.calculateExpression('=');
                    });
                  },
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
