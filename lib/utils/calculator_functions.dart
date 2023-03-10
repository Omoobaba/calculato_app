import 'package:math_expressions/math_expressions.dart';

class CalculatorFunctions {
  String expression = '';
  String result = '';

  void calculateExpression(buttonText) {

    // this clears both the expression and the result
    if (buttonText == 'C') {
      expression = '';
      result = '';

    // this removes the last value in the expression
    } else if (buttonText == 'del') {
      if (expression.isEmpty) {
        return;
      }
      expression = expression.substring(0, expression.length - 1);

    // this evaluates the expression to return the result
    } else if (buttonText == '=') {
      try {
        Parser parser = Parser();
        Expression exp = parser.parse(expression);
        ContextModel context = ContextModel();
        final evaluatedExpression = exp
            .evaluate(
              EvaluationType.REAL,
              context,
            );
        result = '${isInteger(evaluatedExpression) ? (evaluatedExpression as num).ceil() : '$evaluatedExpression'}';
        expression = result;
      } catch (e) {
        result = 'Error $e';
      }

    // this appends the number input to the expression
    } else {
      expression += buttonText;
    }
  }

  // this checks if the input is an integer or a double
  bool isInteger(num value) => value is int || value == value.roundToDouble();
}
