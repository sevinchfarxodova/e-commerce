import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Reviews",
          style: TextStyle(
            height: 2,
            color: AppColors.textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15,),
        Text('4.5 Ratings',
        style: TextStyle(
          color: AppColors.textColor,
          fontSize: 24,
          fontWeight: FontWeight.w500
        ),
        ),
        SizedBox(height: 8,),

        Text('213 Reviews',
          style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 16,
          ),
        ),
        SizedBox(height: 16,),

        _buildReview(
        avatar: 'assets/images/circle.jpg',
        name: "Alex Morgan",
        review:
        "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.",
        date: '12 days ago',
        rating: 4,
      ),
        SizedBox(height: 16,),
        _buildReview(
          avatar: 'assets/images/circle.jpg',
          name: "Alex Morgan",
          review:
          "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.",
          date: '12 days ago',
          rating: 4,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildReview({
    required String avatar,
    required String name,
    required String review,
    required String date,
    required int rating,

}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: AssetImage(avatar),
            radius: 20,
          ),
          title: Text(name,
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(5,
                (index) => Icon(
                  index < rating ?
                Icons.star: Icons.star_border,
                color: AppColors.backgroundSplash_color,
                  size: 18,),
            ),
          ),
        ),
        SizedBox(height: 8,),
        Text(review,
          style: TextStyle(
              color: AppColors.textColor,
              fontSize: 14,),
        ),
        SizedBox(height: 8,),
        Text(date,
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 12,),
        ),
      ],
    );
  }
}
