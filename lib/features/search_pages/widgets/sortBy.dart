// import 'package:flutter/cupertino.dart';
//
// class CustomSortBottomSheet extends StatelessWidget {
//   const CustomSortBottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//     );
//   }
// }
import 'package:commerce_clot/features/search_pages/widgets/elevButGreyColor.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';
import '../../../core/route/route_names.dart';
import '../../auth/widgets/custom_button.dart';

class CustomSortBottomSheet extends StatelessWidget {
  const CustomSortBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Clear',
                style: TextStyle(fontSize: 16, color: AppColors.textColor),
              ),
              Text(
                'Sort by',
                style: TextStyle(fontSize: 24, color: AppColors.textColor),
              ),
              Icon(
                Icons.clear,
                color: AppColors.textColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevButGreyColor(text: 'Recommended'),
          SizedBox(height: 16,),
          ElevButGreyColor(text: 'Newest'),
          SizedBox(height: 16,),
          ElevButGreyColor(text: 'Lowest - Highest Price'),
          SizedBox(height: 16,),
          ElevButGreyColor(text: 'Highest - Lowest Price'),
        ],
      ),
    );
  }

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      backgroundColor: AppColors.backgroundColor,
      builder: (context) => CustomSortBottomSheet(),
    );
  }
}
