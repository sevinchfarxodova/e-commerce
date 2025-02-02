import 'package:commerce_clot/features/product_info/widgets/product_actions.dart';
import 'package:commerce_clot/features/product_info/widgets/product_details.dart';
import 'package:commerce_clot/features/product_info/widgets/product_images.dart';
import 'package:commerce_clot/features/product_info/widgets/product_reviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/constants/color.dart';

class ProductInfo extends StatefulWidget {
   ProductInfo({super.key});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: AppColors.greyColor,),
            onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(
              IconsaxPlusBroken.arrow_left_2,
              color: AppColors.textColor,
            )),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(IconsaxPlusBroken.heart,
          color: AppColors.textColor,))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImages(),
            SizedBox(height: 16,),
            ProductDetails(),
            SizedBox(height: 16,),
            ProductReviews(),
            SizedBox(height: 16,),
            ProductActions(price: 99,),

          ],
        ),
      ),
    );
  }
}
