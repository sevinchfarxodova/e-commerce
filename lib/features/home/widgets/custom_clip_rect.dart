import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';

class CustomClipTop extends StatelessWidget {
  final String? imgURL;
  final String? text;
  final double? price;

  CustomClipTop({super.key,
    this.imgURL,
    this.text,
    this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, RouteNames.productInfo);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                imgURL!,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 200,
              height: 70,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ), ),child: Column(
                    children: [
                      Text(text!, style: TextStyle(color: AppColors.textColor),),
                      Text(price.toString(), style: TextStyle(color: AppColors.textColor, fontSize: 14),),
                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
