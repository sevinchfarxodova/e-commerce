import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/auth/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash_color,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            height: MediaQuery.of(context).size.height/1.8,
            color: AppColors.backgroundSplash_color,
            child: Image.asset('assets/images/message.png',),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40),
            height: MediaQuery.of(context).size.height/2.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Order Placed \nSuccessfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor
                    ),),
                    SizedBox(height: 20,),
                    Text('You will receive an email confirmation',
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.backgroundColor
                      ),
                    ),
                  ],
                ),
                LogInElevated(onPressed: (){
                  Navigator.pushNamed(context, RouteNames.bottomNavBar);
                }, text: 'See order details')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
