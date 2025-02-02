import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/constants/color.dart';
import '../auth/widgets/arrow.dart';

class CheckoutPage extends StatelessWidget {
   CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            )),
        title: Text(
          'Checkout',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.only(top: 20,
      left: 15,
        right: 15,
        bottom: 30
      ),
        child: Column(
          children: [
            Container(
        padding: EdgeInsets.all( 12,),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Shipping Address',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('2715 Ash Dr. San Jose, South Dakota...',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                Arrow(onPressed: (){},
                imgURL: 'assets/images/arrowleft2.png',),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 15,
              right: 15),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.greyColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Payment Method',style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 12
                      ),),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Text('**** 4187',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                          overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(width: 10,),
                          Image.asset('assets/images/pay.png'),
                        ],
                      ),
                    ],
                  ),
                  Arrow(onPressed: (){},
                    imgURL: 'assets/images/arrowleft2.png',),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              height: 340,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // subtotal row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$200',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  // shipping row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping cost',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$8.00',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  // tax row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tax',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  // total row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$208.00',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 100),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.backgroundSplash_color,
                        minimumSize: Size(double.infinity, 49),
                      ),
                      onPressed: (){
                    Navigator
                    .pushNamed(context, RouteNames.messagePage);
                  }, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$208',style: TextStyle(color: AppColors.textColor),),
                      Text('Place order',style: TextStyle(color: AppColors.textColor),),
                    ],
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
