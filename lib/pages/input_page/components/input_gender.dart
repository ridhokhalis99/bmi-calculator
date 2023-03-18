import 'package:bmi_calculator/pages/input_page/components/gender_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/enums.dart';

class InputGender extends StatelessWidget {
  final Function onGenderChange;
  final Gender gender;

  const InputGender(
      {Key? key, required this.onGenderChange, required this.gender})
      : super(key: key);

  void onTap(Gender gender) {
    onGenderChange(gender);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderCard(gender: Gender.male, selectedGender: gender, onTap: onTap),
        const SizedBox(
          width: 12.0,
        ),
        GenderCard(
          gender: Gender.female,
          selectedGender: gender,
          onTap: onTap,
        ),
      ],
    );
  }
}
