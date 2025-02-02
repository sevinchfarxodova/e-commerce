import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductActions extends StatelessWidget {
  final int price;

   ProductActions({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFF8E6CEF),
      ),
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )
          ),
          onPressed: (){
            Navigator.pushNamed(context, RouteNames.cardPage);
          }, child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$$price',
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),),
          Text('Add to Bage',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 18,
            ),
          )
        ],
      )),
    );
  }
}
