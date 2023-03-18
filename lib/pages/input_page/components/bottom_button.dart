import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  const BottomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 56.0,
        width: double.infinity,
        color: kAccentColor,
        child: const Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          ),
        ),
      ),
    );
  }
}
