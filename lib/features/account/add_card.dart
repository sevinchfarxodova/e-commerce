import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/auth/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: AppColors.greyColor),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            IconsaxPlusBroken.arrow_left_2,
            color: AppColors.textColor,
          ),
        ),
        title: Text('Add card',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              TextField(
                style: TextStyle(
                  color: AppColors.textColor
                ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintStyle:
          const TextStyle(color: Colors.grey, fontSize: 16),
          hintText: "Card Number",
          fillColor: AppColors.greyColor,
        ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: TextField(
                    style: TextStyle(
                        color: AppColors.textColor
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle:
                      const TextStyle(color: Colors.grey, fontSize: 16),
                      hintText: "CCV",
                      fillColor: AppColors.greyColor,
                    ),
                  ),),
                  SizedBox(width: 20,),
                  Expanded(child: TextField(
                    style: TextStyle(
                        color: AppColors.textColor
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle:
                      const TextStyle(color: Colors.grey, fontSize: 16),
                      hintText: "Exp",
                      fillColor: AppColors.greyColor,
                    ),
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              TextField(
                style: TextStyle(
                    color: AppColors.textColor,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintStyle:
                  const TextStyle(color: Colors.grey, fontSize: 16),
                  hintText: "Cardholder Name",
                  fillColor: AppColors.greyColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 350,),
          LogInElevated(onPressed: (){
            Navigator.pop(context);
          }, text: 'Save')
        ],
      ),
      ),
    );
  }
}
