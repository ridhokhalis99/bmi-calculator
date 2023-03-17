import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});
  onTap() => {};

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 56.0,
        width: double.infinity,
        color: kAccentColor,
        child: const Center(
          child: Text(
            'Calculate',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
