import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'pages/input_page/index.dart';
import 'pages/result_page/index.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        colorScheme: (ColorScheme.fromSwatch().copyWith(
          primary: kPrimaryColor,
        )),
      ),
      routes: {
        '/': (context) => const InputPage(),
        '/result': (context) => const ResultPage(),
      },
    );
  }
}
