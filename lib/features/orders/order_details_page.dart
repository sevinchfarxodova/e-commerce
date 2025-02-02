import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/orders/widgets/checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
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
        toolbarHeight: 100,
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          'Order #456765',
          style: TextStyle(
              color: AppColors.textColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckerWidget(process: "Delivered", date: '28 Dec', checker: true),
            CheckerWidget(process: "Delivered", date: '25 Dec', checker: false),
            CheckerWidget(process: "Delivered", date: '20 Dec', checker: true),
            CheckerWidget(process: "Delivered", date: '16 Dec', checker: false),
            Text(
              'Order items',
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.greyColor,
              ),
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 70,
              child: Row(
                children: [
                  Icon(
                    IconsaxPlusBroken.receipt_1,
                    color: AppColors.textColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '4 items',
                    style: TextStyle(color: AppColors.textColor),
                  ),
                  Expanded(child: Container()),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(color: AppColors.backgroundSplash_color),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Shpping details',
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20,),
            Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.greyColor,
            ),
            padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('2715 Ash Dr. San Jose, South Dakota 83475',
                  style: TextStyle(color: AppColors.textColor),
                  ),
                  SizedBox(height: 5,),
                  Text('121-224-7890',
                  style: TextStyle(color: AppColors.textColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
