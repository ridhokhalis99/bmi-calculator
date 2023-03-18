import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/constants/styles.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class NumericCard extends StatefulWidget {
  final String label;
  final int defaultValue;
  const NumericCard({
    Key? key,
    required this.label,
    required this.defaultValue,
  }) : super(key: key);

  @override
  _NumericCardState createState() => _NumericCardState();
}

class _NumericCardState extends State<NumericCard> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    void onAdd() {
      setState(() {
        _value++;
      });
    }

    void onMinus() {
      setState(() {
        _value--;
      });
    }

    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.label, style: kLabelTextStyle),
          const SizedBox(
            height: 12.0,
          ),
          Text(_value.toString(), style: kNumberTextStyle),
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
