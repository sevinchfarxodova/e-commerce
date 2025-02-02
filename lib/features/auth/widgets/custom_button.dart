import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInElevated extends StatelessWidget {
  final VoidCallback onPressed;
  String? text;

  LogInElevated({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            minimumSize: Size(double.infinity, 49)),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text!,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
