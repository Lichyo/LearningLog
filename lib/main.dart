import 'package:flutter/material.dart';
import 'package:teaching_log/screen/welcome_screen.dart';

void main() => runApp(const TeachingLog());

class TeachingLog extends StatelessWidget {
  const TeachingLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
