import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/auth/widgets/custom_button.dart';
import 'package:commerce_clot/features/auth/widgets/log_in_forms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
        title: Text(
          'Cart',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Remove all",
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Use ListView.builder for dynamically displaying carts
               ListView.builder(
                  shrinkWrap: true, // Prevents overflow issues
                  physics: NeverScrollableScrollPhysics(), // Disables inner scroll
                  itemCount: 2, // Change this to the actual number of items
                  itemBuilder: (context, index) => carts(),
                ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 310,
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
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            IconsaxPlusBroken.discount_shape,
                            color: Colors.green,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color: AppColors.textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Enter Coupon Code',
                                hintStyle: TextStyle(
                                    color: AppColors.greyColor),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: AppColors.backgroundSplash_color,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, RouteNames.checkout);
                            },
                            icon: Icon(
                              IconsaxPlusBroken.arrow_right_3,
                              color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    LogInElevated(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.checkout);
                      },
                      text: 'Checkout',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget carts() {
  return Container(
    margin: EdgeInsets.only(bottom: 11),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: AppColors.greyColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/top_sel.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Men's Harrington Jacket",
                style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    'Size - ',
                    style: TextStyle(
                      color: AppColors.greyColor,
                    ),
                  ),
                  Text(
                    'M',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Color - ',
                    style: TextStyle(color: AppColors.greyColor),
                  ),
                  Text(
                    'Lemon',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$150",
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.backgroundSplash_color,
                    ),
                    onPressed: () {},
                    icon: Icon(
                      IconsaxPlusBroken.add,
                      color: AppColors.backgroundColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.backgroundSplash_color,
                    ),
                    onPressed: () {},
                    icon: Icon(
                      IconsaxPlusBroken.minus,
                      color: AppColors.backgroundColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
