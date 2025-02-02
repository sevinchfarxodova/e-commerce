import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget circleAvatar(String imgURL, String text){
  return Container(
    padding: EdgeInsets.only(right: 12),
    child: Column(
      children: [
    CircleAvatar(
    backgroundColor: AppColors.textColor,
    backgroundImage: AssetImage(imgURL,),
    radius: 40,
    ),
        Text(text, style: TextStyle(color: AppColors.textColor), ),
      ],
    ),
  );
}