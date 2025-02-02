import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                child: Image.asset(
                  'assets/images/circle.jpg',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.greyColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sevinch Farxodova',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'farxodovaSevinch@gmail.com',
                          style: TextStyle(
                              color: AppColors.greyColor, fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: AppColors.backgroundSplash_color,
                                fontSize: 16,
                              ),
                            ))
                      ],
                    ),
                    Text(
                      '121-224-7890',
                      style:
                          TextStyle(color: AppColors.greyColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  elevatedButton('Address', (){
                    Navigator.pushNamed(context, RouteNames.addressEdit);
                  }),
                  elevatedButton('Wishlist', (){
                    Navigator.pushNamed(context, RouteNames.wishlist);
                  }),
                  elevatedButton('Payment', (){
                    Navigator.pushNamed(context, RouteNames.paymentPage);
                  }),
                  elevatedButton('Help', (){}),
                  elevatedButton('Support', (){}),
                ],
              ),
              TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, RouteNames.signInEmail);
              }, child: Text('Sign out',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),))
            ],
          ),
        ),
      ),
    );
  }
}

Widget elevatedButton(String text, VoidCallback onPressed) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greyColor,
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Icon(IconsaxPlusBroken.arrow_right_3,
            color: AppColors.textColor,),
          ],
        )),
  );
}
