import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class ElevButGreyColor extends StatefulWidget {
  String text;

  ElevButGreyColor({super.key, required this.text});

  @override
  State<ElevButGreyColor> createState() => _ElevButGreyColorState();
}

class _ElevButGreyColorState extends State<ElevButGreyColor> {
  bool onTap=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            onTap=!onTap;
          });
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.only(left: 25, right: 25),
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: onTap?AppColors.backgroundSplash_color
                : AppColors.greyColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Text(
              widget.text,
              style: TextStyle(color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500),
            ),
                if (onTap)
                  Icon(Icons.check_rounded,
                  color: AppColors.textColor,),
          ]),
        ));
  }
}
