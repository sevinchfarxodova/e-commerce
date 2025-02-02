import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/auth/widgets/arrow.dart';
import 'package:commerce_clot/features/notification/widgets/notice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/route/route_names.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

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
          icon: Icon(
            IconsaxPlusBroken.arrow_left_2,
            color: AppColors.textColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Wishlist",
          style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            notice("My Favorite", "12 Products", () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'My Favorite');
            }),
            notice("T-Shirts", "4 Products", () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'T-Shirts');
            }),
          ],
        ),
      ),
    );
  }
}

Widget notice(String text, String bText, VoidCallback onPressed) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15),
    child: GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.greyColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/heart.png'),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text(
                    bText,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 200,),
              Arrow(onPressed: onPressed,
              imgURL: 'assets/images/arrowright2.png',)
            ],
          ),

        ),
      ),
    ),
  );
}
