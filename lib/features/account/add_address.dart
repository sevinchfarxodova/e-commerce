import 'package:commerce_clot/features/auth/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/constants/color.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: AppColors.greyColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(IconsaxPlusBroken.arrow_left_2,
            color: AppColors.textColor,),
        ),
        title: Text(" Add Address",
          style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.only(
        top: 40,
        left: 15,
        right: 15,
        bottom: 15
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              TextField(
                style: TextStyle(
                  color: AppColors.textColor,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 16
                  ),
                  hintText: 'Street Address',
                  fillColor: AppColors.greyColor
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                style: TextStyle(
                  color: AppColors.textColor,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 16
                    ),
                    hintText: 'City',
                    fillColor: AppColors.greyColor
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child:  TextField(
                    style: TextStyle(
                      color: AppColors.textColor,
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 16
                        ),
                        hintText: 'State',
                        fillColor: AppColors.greyColor
                    ),
                  ),
                    ),
                  SizedBox(width: 10,),
                  Expanded(child:  TextField(
                    style: TextStyle(
                      color: AppColors.textColor,
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 16
                        ),
                        hintText: 'Zip Code',
                        fillColor: AppColors.greyColor
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
              ),
              LogInElevated(onPressed: (){
                Navigator.pop(context);
              }, text: 'Save')
            ],
          )
        ],
      ),
      ),
    );
  }
}
