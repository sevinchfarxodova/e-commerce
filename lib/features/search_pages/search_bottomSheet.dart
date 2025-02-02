import 'package:commerce_clot/features/search_pages/widgets/gender.dart';
import 'package:commerce_clot/features/search_pages/widgets/onSale.dart';
import 'package:commerce_clot/features/search_pages/widgets/price.dart';
import 'package:commerce_clot/features/search_pages/widgets/sortBy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/constants/color.dart';
import '../../core/route/route_names.dart';
import '../home/widgets/custom_clip_rect.dart';

class SearchBottomsheet extends StatefulWidget {
  const SearchBottomsheet({super.key});

  @override
  State<SearchBottomsheet> createState() => _SearchBottomsheetState();
}

class _SearchBottomsheetState extends State<SearchBottomsheet> {
  bool hasItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: SizedBox(
          height: 50,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(45),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(color: AppColors.textColor),
                prefixIcon: Icon(
                  IconsaxPlusBroken.search_normal,
                  color: AppColors.textColor,
                ),
                suffixIcon: Icon(
                  Icons.clear,
                  color: AppColors.textColor,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              style: TextStyle(color: AppColors.textColor),
            ),
          ),
        ),
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: AppColors.greyColor),
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.searchPage);
          },
          icon: Icon(
            IconsaxPlusBroken.arrow_left_2,
            color: AppColors.textColor,
          ),
        ),
      ),
      body: hasItem
          ? SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/search.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: Text(
                      "Sorry, we couldn't find any\n  matching result for your\n               Search.",
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.backgroundSplash_color,
                      minimumSize: const Size(185, 52),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.shopCategories);
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
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FilterChip(
                          label: Text(
                            '2',
                            style: TextStyle(color: AppColors.textColor),
                          ),
                          backgroundColor: AppColors.backgroundSplash_color,
                          avatar: Icon(
                            IconsaxPlusBroken.filter,
                            color: AppColors.textColor,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          onSelected: (_) {
                          },
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ChoiceChip(
                          label: Text(
                            'On Sale',
                            style: TextStyle(fontSize: 12),
                          ),
                          backgroundColor: AppColors.greyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onSelected: (_) {
                            OnSale.show(context);
                          },
                          selected: false,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ChoiceChip(
                          label: Text(
                            'Price',
                            style: TextStyle(fontSize: 12, color: AppColors.textColor),
                          ),
                          backgroundColor: AppColors.backgroundSplash_color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          avatar: Icon(
                            IconsaxPlusBroken.arrow_down_2,
                            color: AppColors.textColor,),
                          onSelected: (_) {
                            Price.show(context);
                          },
                          selected: false,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ChoiceChip(
                          label: Text(
                            'Sort by',
                            style: TextStyle(fontSize: 12),
                          ),
                          backgroundColor: AppColors.greyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          avatar: Icon(
                            IconsaxPlusBroken.arrow_down_2,
                            color: AppColors.textColor,),
                          onSelected: (_) {
                            CustomSortBottomSheet.show(context);
                          },
                          selected: false,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ChoiceChip(
                          label: Text(
                            'Men',
                            style: TextStyle(fontSize: 12,color: AppColors.textColor),
                          ),
                          backgroundColor: AppColors.backgroundSplash_color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          avatar: Icon(
                            IconsaxPlusBroken.arrow_down_2,
                            color: AppColors.textColor,),
                          onSelected: (_) {
                            Gender.show(context);
                          },
                          selected: false,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.6,
                    children: [
                      // Text('53 Results Found',
                      //   style: TextStyle(
                      //       color: AppColors.textColor,
                      //       fontSize: 12,
                      //       fontWeight: FontWeight.w300),
                      // ),
                      CustomClipTop(
                        imgURL: 'assets/images/top_sel.jpg',
                        text: "'WoMen's Harrington Jacket ",
                        price: 170.0,
                      ),
                      CustomClipTop(
                        imgURL: 'assets/images/top_sel.jpg',
                        text: "'WoMen's Harrington Jacket ",
                        price: 200.0,
                      ),
                      CustomClipTop(
                        imgURL: 'assets/images/top_sel.jpg',
                        text: "'WoMen's Harrington Jacket ",
                        price: 170.0,
                      ),
                      CustomClipTop(
                        imgURL: 'assets/images/top_sel.jpg',
                        text: "'WoMen's Harrington Jacket ",
                        price: 170.0,
                      ),
                      CustomClipTop(
                        imgURL: 'assets/images/top_sel.jpg',
                        text: "'WoMen's Harrington Jacket ",
                        price: 170.0,
                      ),
                      CustomClipTop(
                        imgURL: 'assets/images/top_sel.jpg',
                        text: "'WoMen's Harrington Jacket ",
                        price: 170.0,
                      ),
                    ],
                  )),
                ],
              ),
            ),
    );
  }
}
