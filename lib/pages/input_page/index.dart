import 'package:bmi_calculator/pages/input_page/components/input_weight_age.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/card.dart';
import 'components/bottom_button.dart';
import 'package:bmi_calculator/pages/input_page/components/input_gender.dart';
import 'package:bmi_calculator/pages/input_page/components/input_height.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 80.0),
        child: Column(
          children: const [
            Expanded(flex: 2, child: InputGender()),
            SizedBox(height: 8.0),
            Expanded(
              flex: 3,
              child: InputHeight(),
            ),
            SizedBox(height: 8.0),
            Expanded(
              flex: 2,
              child: InputWeightAge(),
            )
          ],
        ),
      ),
      bottomSheet: const BottomButton(),
    );
  }
}
