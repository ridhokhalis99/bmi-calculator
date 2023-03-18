import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/constants/styles.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class NumericCard extends StatefulWidget {
  String label;
  int value, min, max;
  Function onChange;

  NumericCard({
    Key? key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.onChange,
  }) : super(key: key);

  @override
  _NumericCardState createState() => _NumericCardState();
}

class _NumericCardState extends State<NumericCard> {
  @override
  Widget build(BuildContext context) {
    int value = widget.value;
    int min = widget.min;
    int max = widget.max;
    String label = widget.label;
    Function onChange = widget.onChange;

    void onAdd() {
      if (value >= max) return;
      setState(() {
        value++;
        onChange(value);
      });
    }

    void onMinus() {
      if (value <= min) return;
      setState(() {
        value--;
        onChange(value);
      });
    }

    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: kLabelTextStyle),
          const SizedBox(
            height: 12.0,
          ),
          Text(value.toString(), style: kNumberTextStyle),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: onMinus,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12.0),
                  shape: const CircleBorder(),
                  backgroundColor: kLighterPrimaryColor,
                  elevation: 6,
                ),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 16.0,
              ),
              ElevatedButton(
                onPressed: onAdd,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12.0),
                  shape: const CircleBorder(),
                  backgroundColor: kLighterPrimaryColor,
                  elevation: 6,
                ),
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
