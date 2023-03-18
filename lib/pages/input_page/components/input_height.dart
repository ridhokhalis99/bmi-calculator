import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/styles.dart';

class InputHeight extends StatefulWidget {
  const InputHeight({
    Key? key,
  }) : super(key: key);

  @override
  _InputHeightState createState() => _InputHeightState();
}

class _InputHeightState extends State<InputHeight> {
  var height = 150;

  @override
  Widget build(BuildContext context) {
    onChanged(double value) {
      setState(() {
        height = value.toInt();
      });
    }

    return Card(
      color: kLightPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('HEIGHT', style: kLabelTextStyle),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(height.toString(), style: kNumberTextStyle),
              Container(
                margin: const EdgeInsets.fromLTRB(4.0, 0, 0, 10.0),
                child: const Text('cm', style: kUnitTextStyle),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                thumbColor: kAccentColor,
                activeTrackColor: kWhiteColor,
                inactiveTrackColor: kLightGreyColor),
            child: Slider(
              value: height.toDouble(),
              min: 120,
              max: 220,
              label: height.toString(),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
