import 'package:bmi_calculator/pages/input_page/components/gender_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/enums.dart';

class InputGender extends StatefulWidget {
  const InputGender({Key? key}) : super(key: key);

  @override
  _InputGenderState createState() => _InputGenderState();
}

class _InputGenderState extends State<InputGender> {
  Gender selectedGender = Gender.male;

  void onTap(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderCard(
            gender: Gender.male, selectedGender: selectedGender, onTap: onTap),
        const SizedBox(
          width: 12.0,
        ),
        GenderCard(
            gender: Gender.female,
            selectedGender: selectedGender,
            onTap: onTap),
      ],
    );
  }
}
