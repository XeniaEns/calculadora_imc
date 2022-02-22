import 'package:flutter/material.dart';

import 'package:calculator_bmi/util/const.dart';
import 'pages/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: kPrimaryColor,
        ),
      ),
      home: const InputPage()      
    );
  }
}
