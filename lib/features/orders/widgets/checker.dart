import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckerWidget extends StatelessWidget {
  final String process;
  final String date;
  final bool checker;

   CheckerWidget({super.key,
     required this.process,
     required this.date,
     required this.checker});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(bottom: 40),
    child: Row(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child:  Checkbox(
              checkColor: AppColors.backgroundSplash_color,

              value: checker,
              onChanged: (bool? newValue){},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),),
        ),
        SizedBox(width: 20,),
        Text(
          process,
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 16, fontWeight: FontWeight.w400
          ),
        ),
        Expanded(child: Container()),
        Text(date,style: TextStyle(
          color: AppColors.textColor,
          fontSize: 12,fontWeight: FontWeight.w400
        ),)
      ],
    ),
    );
  }
}

