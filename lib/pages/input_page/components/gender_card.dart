import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/enums.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final Gender gender;
  final Gender selectedGender;
  final void Function(Gender gender) onTap;
  const GenderCard({
    Key? key,
    required this.gender,
    required this.onTap,
    required this.selectedGender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final label = gender == Gender.male ? 'Male' : 'Female';
    final icon = gender == Gender.male ? Icons.male : Icons.female;
    final isSelected = gender == selectedGender;

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(gender),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: isSelected ? kLighterPrimaryColor : kLightPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 80.0,
                color: isSelected ? kTextColor : kSecondaryTextColor,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                label.toUpperCase(),
                style: TextStyle(
                  color: isSelected ? kTextColor : kSecondaryTextColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
