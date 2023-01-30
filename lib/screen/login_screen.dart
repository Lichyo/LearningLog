import 'package:flutter/material.dart';
import 'package:teaching_log/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TextField(
          onChanged: (value) {},
          decoration:
          kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
        ),
          const SizedBox(
            height: 8.0,
          ),
          TextField(
            onChanged: (value) {},
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password'),
          ),],
      ),
    );
  }
}
