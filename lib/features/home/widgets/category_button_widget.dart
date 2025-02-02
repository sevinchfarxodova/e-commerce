// import 'package:commerce_clot/core/constants/color.dart';
// import 'package:commerce_clot/core/route/route_names.dart';
// import 'package:flutter/material.dart';
//
// Widget shopCatButton(String imgURL, String text, BuildContext context) {
//   return ElevatedButton(
//       onPressed: () {
//         Navigator.pushNamed(context, RouteNames.productCategories);
//       },
//       style: ElevatedButton.styleFrom(
//           minimumSize: Size(double.infinity, 64),
//           backgroundColor: AppColors.greyColor,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           )),
//       child: Row(
//         children: [
//           CircleAvatar(
//             //borderRadius: BorderRadius.circular(40),
//             child: Image.asset(
//               imgURL,
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Text(
//             text,
//             style: TextStyle(color: AppColors.textColor),
//           )
//         ],
//       ));
// }

import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopCatButton extends StatelessWidget {
  String imgURL;
  String text;
  VoidCallback onPressed;

  ShopCatButton(
      {super.key,
      required this.imgURL,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 15),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 64),
        backgroundColor: AppColors.greyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
    ), child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(48),
          child: Image.asset(imgURL,width: 45,height: 45, ),
        ),
        SizedBox(width: 20,),
        Text(text, style: TextStyle(color: AppColors.textColor),),
      ],
    ),
    ),
    );
  }
}
