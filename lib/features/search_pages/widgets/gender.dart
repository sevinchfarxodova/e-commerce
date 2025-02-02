import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';
import 'elevButGreyColor.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Clear',
                style: TextStyle(fontSize: 16, color: AppColors.textColor),
              ),
              Text(
                'Gender',
                style: TextStyle(fontSize: 24, color: AppColors.textColor),
              ),
              Icon(
                Icons.clear,
                color: AppColors.textColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevButGreyColor(text: 'Men'),
          SizedBox(height: 16,),
          ElevButGreyColor(text: 'Women'),
          SizedBox(height: 16,),
          ElevButGreyColor(text: 'Kids'),
        ],
      ),
    );
  }
  static void show(BuildContext context){
    showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        backgroundColor: AppColors.backgroundColor,
        builder: (context)=>const Gender());
  }
}

