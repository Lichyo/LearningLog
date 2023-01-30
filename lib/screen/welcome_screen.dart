import 'package:flutter/material.dart';
import 'package:teaching_log/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teaching_log/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    AnimationController controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: const <Widget>[
                  Expanded(
                    flex: 1,
                    child: Hero(
                      tag: 'logo',
                      child: Icon(
                        FontAwesomeIcons.school,
                        size: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Learning Log',
                      style: kLabelTextStyle,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              const RoundedButton(
                text: 'Login',
                color: Colors.lightBlueAccent,
              ),
              const SizedBox(
                height: 20,
              ),
              const RoundedButton(
                text: 'Register',
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
