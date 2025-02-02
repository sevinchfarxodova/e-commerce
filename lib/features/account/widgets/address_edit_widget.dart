import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressEditWidget extends StatelessWidget {
  const AddressEditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColors.greyColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '2715 Ash Dr. San Jose, South Dakota 83475',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.addAddress);
                },
                child: Text(
                  'Edit',
                  style: TextStyle(
                      color: AppColors.backgroundSplash_color,
                      fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
