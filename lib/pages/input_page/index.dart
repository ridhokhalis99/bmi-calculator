import 'package:bmi_calculator/constants/enums.dart';
import 'package:bmi_calculator/pages/input_page/components/input_weight_age.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/input_page/components/bottom_button.dart';
import 'package:bmi_calculator/pages/input_page/components/input_gender.dart';
import 'package:bmi_calculator/pages/input_page/components/input_height.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _gender = Gender.male;
  int _height = 173;
  int _weight = 70;
  int _age = 21;

  void _onGenderChange(Gender gender) {
    setState(() {
      _gender = gender;
    });
  }

  void _onHeightChange(int height) {
    setState(() {
      _height = height;
    });
  }

  void _onWeightChange(int weight) {
    setState(() {
      _weight = weight;
    });
  }

  void _onAgeChange(int age) {
    setState(() {
      _age = age;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 80.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: InputGender(
                onGenderChange: _onGenderChange,
                gender: _gender,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              flex: 3,
              child: InputHeight(
                onHeightChange: _onHeightChange,
                height: _height,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              flex: 2,
              child: InputWeightAge(
                weight: _weight,
                onWeightChange: _onWeightChange,
                age: _age,
                onAgeChange: _onAgeChange,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomButton(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/result',
            arguments: {
              'gender': _gender,
              'height': _height,
              'weight': _weight,
              'age': _age,
            },
          );
        },
      ),
    );
  }
}
