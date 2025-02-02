import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/auth/sign_in/sign_in_email.dart';
import 'package:commerce_clot/features/home/widgets/category_button_widget.dart';
import 'package:commerce_clot/features/home/widgets/my_circle_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/route/route_names.dart';
import '../auth/widgets/arrow.dart';

class ShopCategories extends StatelessWidget {
  const ShopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Arrow(
              onPressed: () {
                Navigator.of(context).pop(); },
              imgURL: "assets/images/arrowleft2.png",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Shop by categories',
              style: TextStyle(color: AppColors.textColor, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            ShopCatButton(imgURL: 'assets/images/hoodies.webp', text: 'Hoodies', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
              arguments: 'Hoodies');
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton(imgURL: 'assets/images/shorts.jpg',text:  'Shorts', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
              arguments: "Shorts");
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton(imgURL: "assets/images/shoes.webp",text:  'Shoes', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'Shoes');
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton( imgURL:  "assets/images/bags.jpg", text:  'Bags', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'Bags');
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton(imgURL: "assets/images/accessories.jpg",text:  'Accessories', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'Accessories');
            }, ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ));
  }
}
