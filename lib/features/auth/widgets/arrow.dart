import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  final VoidCallback onPressed;
 final String? imgURL;
  const Arrow({super.key, required this.onPressed, this.imgURL});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.backgroundColor,
          minimumSize: Size(40, 40),
        ),
        onPressed: onPressed,
        child: Image.asset(
          imgURL!,
      height: 50,
      width: 50,

    ));
  }
}
