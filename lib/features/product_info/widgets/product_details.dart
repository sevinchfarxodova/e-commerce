import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/product_info/widgets/product_quantity_selector.dart';
import 'package:commerce_clot/features/product_info/widgets/product_selection.dart';
import 'package:flutter/cupertino.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String _selectedSize='M';
  String _selectedColor='Blue';

  @override
  Widget build(BuildContext context) {
    const String productName="Womens's Jacket";
    const int productPrice=150;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(productName,style: TextStyle(
          color: AppColors.textColor,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),),
        SizedBox(height: 8,),

        Text("\$$productPrice",
          style: TextStyle(
          color: AppColors.backgroundSplash_color,
          fontSize: 20,
          fontWeight: FontWeight.w400,),
        ),
        SizedBox(height: 16,),

        ProductSelection(label: 'Size',
            initialValue: _selectedSize,
            options: ["S", "M", "L", "XL"],
            onSelected: (value){
          setState(() {
            _selectedSize=value;
          });
            }),
        SizedBox(height: 16,),

        ProductSelection(label: 'Color',
            initialValue: _selectedColor,
            options: ['Green', 'Blue','Black'],
            onSelected: (value){
          setState(() {
            _selectedColor=value;
          });
            }
            ),
        SizedBox(height: 16,),
        ProductQuantitySelector(),
        SizedBox(height: 25,),

        Text('Built for life on the move, this compact and lightweight backpack is perfect for everyday use. It features a padded laptop sleeve, internal organization, and two water bottle pockets.',
        style: TextStyle(
          color: AppColors.greyColor,
          fontSize: 16
        ),),

        SizedBox(height: 24,),

        Text("Shipping & Returns",
          style: TextStyle(
              color: AppColors.textColor,
              fontSize: 18,
            fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 10,),
        Text('Free standard shipping and free 60-day returns.',
          style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 16,
          ),
        ),
      ],
    );
  }
}
