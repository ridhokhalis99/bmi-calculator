import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/pages/input_page/components/input_gender.dart';
import 'package:flutter/material.dart';
import '../../components/card.dart';
import 'components/bottom_button.dart';

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
          children: [
            const Expanded(flex: 2, child: InputGender()),
            const SizedBox(height: 8.0),
            Expanded(
              flex: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  CustomCard(
                    child: Text('test'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  CustomCard(
                    child: Text('test'),
                  ),
                  SizedBox(width: 8.0),
                  CustomCard(
                    child: Text('test'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: const BottomButton(),
    );
  }
}
