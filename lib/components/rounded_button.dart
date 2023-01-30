import 'package:flutter/material.dart';
import 'package:teaching_log/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key, required this.text, this.onPressed, required this.color
  });

  final String text;
  final VoidCallback? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: color,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          text,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
