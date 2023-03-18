import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/enums.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  String calculateBMI(int age, int weight, int height, Gender gender) {
    bool isMale = gender == Gender.male;
    double genderFactor = isMale ? 1 : 0;
    double heightInMeters = height / 100;
    double bmi = (1.2 * weight) / (heightInMeters * heightInMeters) +
        (0.23 * age) -
        (10.8 * genderFactor) -
        5.4;
    return bmi.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final Gender gender = args['gender'] as Gender;
    final int height = args['height'] as int;
    final int weight = args['weight'] as int;
    final int age = args['age'] as int;
    final String bmi = calculateBMI(age, weight, height, gender);
    final Map<String, List<double>> bmiCategories = {
      'Underweight': [0, 18.5],
      'Normal': [18.5, 25],
      'Overweight': [25, 30],
      'Obese': [30, 100],
    };

    final Map<String, Color> bmiCategoryColors = {
      'Underweight': Colors.blue,
      'Normal': Colors.green,
      'Overweight': Colors.orange,
      'Obese': Colors.red,
    };

    final String bmiCategory = bmiCategories.entries
        .firstWhere((element) =>
            double.parse(bmi) >= element.value[0] &&
            double.parse(bmi) < element.value[1])
        .key;

    final bmiRange = bmiCategories[bmiCategory]!;
    final String bmiRangeDescription = '${bmiRange[0]} - ${bmiRange[1]} kg/m2';

    final Color bmiCategoryColor = bmiCategoryColors[bmiCategory]!;

    final Map<String, String> bmiCategoryDescriptions = {
      'Underweight':
          'You have a lower than normal body weight. You can eat a bit more.',
      'Normal': 'You have a normal body weight. Good job!',
      'Overweight':
          'You have a higher than normal body weight. Try to exercise more.',
      'Obese':
          'You have a higher than normal body weight. Try to exercise more.',
    };
    final String? bmiCategoryDescription = bmiCategoryDescriptions[bmiCategory];

    void onReCalculate() {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(32.0, 24.0, 32.0, 80.0),
        child: Column(
          children: [
            const Text(
              'Your Result',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(height: 24.0),
            Card(
              color: kLightPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    Text(
                      bmiCategory.toUpperCase(),
                      style: TextStyle(
                        color: bmiCategoryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      bmi,
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text('$bmiCategory BMI range:'),
                    const SizedBox(height: 4.0),
                    Text(bmiRangeDescription),
                    const SizedBox(height: 24.0),
                    Text(bmiCategoryDescription!, textAlign: TextAlign.center),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: onReCalculate,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kAccentColor,
                      ),
                      child: const Text(
                        'RECALCULATE',
                        style: TextStyle(
                          letterSpacing: 0.5,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
