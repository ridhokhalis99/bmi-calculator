import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/input_page/components/numeric_card.dart';

class InputWeightAge extends StatelessWidget {
  final int weight, age;
  final void Function(int) onWeightChange, onAgeChange;

  const InputWeightAge({
    Key? key,
    required this.weight,
    required this.age,
    required this.onWeightChange,
    required this.onAgeChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NumericCard(
            label: 'WEIGHT',
            value: weight,
            min: 0,
            max: 180,
            onChange: onWeightChange),
        const SizedBox(
          width: 12.0,
        ),
        NumericCard(
            label: 'AGE', value: age, min: 0, max: 100, onChange: onAgeChange),
      ],
    );
  }
}
