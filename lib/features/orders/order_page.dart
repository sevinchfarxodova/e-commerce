import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/notification/widgets/notice.dart';
import 'package:commerce_clot/features/orders/tabbar.dart';
import 'package:commerce_clot/features/orders/widgets/orderNotification.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool hasNotificationOrder = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: Text(
            'Orders',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: hasNotificationOrder
            ? SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/check.png',
                height: 70,
                width: 70,
              ),
              const SizedBox(height: 24),
              Text(
                'No Orders yet',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.backgroundSplash_color,
                  minimumSize: const Size(185, 52),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, RouteNames.shopCategories);
                },
                child: Text(
                  'Explore Categories',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        )
            : Orders(), // Ensure Orders() is implemented elsewhere
      ),
    );
  }
}
