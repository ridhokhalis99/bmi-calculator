import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: kLightPrimaryColor,
        child: child,
      ),
    );
  }
}
