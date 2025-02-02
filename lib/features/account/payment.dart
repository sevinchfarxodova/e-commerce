import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/auth/widgets/arrow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

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
          icon: const Icon(
            IconsaxPlusBroken.arrow_left_2,
            color: AppColors.textColor,
          ),
        ),
        title: Text(
          'Add Address',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cards',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            paymentCnt(context),
            paymentCnt(context),
            SizedBox(
              height: 20,
            ),
            Text(
              'Paypal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.greyColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('cloth_clot@gmail.com',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16
                  ),
                  ),
                  SizedBox(width: 200,),
                  IconButton(
                    style: IconButton.styleFrom(backgroundColor: AppColors.greyColor),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.addCard);
                    },
                    icon: Icon(
                      IconsaxPlusBroken.arrow_left_2,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget paymentCnt(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.greyColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '**** 4187',
            style: TextStyle(color: AppColors.textColor),
          ),
          Image.asset(
            'assets/images/pay.png',
            width: 200,
          ),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: AppColors.greyColor),
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.addCard);
            },
            icon: Icon(
              IconsaxPlusBroken.arrow_left_2,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    ),
  );
}
