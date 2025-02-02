import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax_plus/iconsax_plus.dart';


class ProductQuantitySelector extends StatefulWidget {
  const ProductQuantitySelector({super.key});

  @override
  State<ProductQuantitySelector> createState() =>
      _ProductQuantitySelectorState();
}

class _ProductQuantitySelectorState extends State<ProductQuantitySelector> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Quantity',
            style: TextStyle(color: AppColors.textColor, fontSize: 16),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (_quantity > 1) _quantity--;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundSplash_color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    IconsaxPlusBroken.minus,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text("$_quantity",
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _quantity++;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundSplash_color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    IconsaxPlusBroken.add,
                    color: AppColors.textColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
