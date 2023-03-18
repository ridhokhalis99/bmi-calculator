import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/input_page/components/numeric_card.dart';

class InputWeightAge extends StatelessWidget {
  const InputWeightAge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: NumericCard(
            label: 'WEIGHT',
            defaultValue: 60,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: NumericCard(
            label: 'AGE',
            defaultValue: 20,
          ),
        ),
      ],
    );
  }
}
