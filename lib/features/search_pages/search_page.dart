import 'package:commerce_clot/features/search_pages/search_bottomSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../core/constants/color.dart';
import '../../core/route/route_names.dart';
import '../auth/widgets/arrow.dart';
import '../home/shop_categories.dart';
import '../home/widgets/category_button_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool hasItem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.backgroundColor,
        title: SizedBox(
          height: 50,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(45),
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RouteNames.searchPageBottomSheets);
              },
              child: AbsorbPointer(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //  fillColor: Colors.transparent,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: AppColors.textColor,
                    ),
                    prefixIcon: Icon(
                      IconsaxPlusBroken.search_normal,
                      color: AppColors.textColor,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                  style: TextStyle(color: AppColors.textColor),
                ),
              ),
            ),
          ),
        ),
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: AppColors.greyColor),
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.homePage);
          },
          icon: Icon(
            IconsaxPlusBroken.arrow_left_2,
            color: AppColors.textColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Shop by categories',
              style: TextStyle(color: AppColors.textColor, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            ShopCatButton(imgURL: 'assets/images/hoodies.webp', text: 'Hoodies', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'Hoodies');
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton(imgURL: 'assets/images/shorts.jpg',text:  'Shorts', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: "Shorts");
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton(imgURL: "assets/images/shoes.webp",text:  'Shoes', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'Shoes');
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton( imgURL:  "assets/images/bags.jpg", text:  'Bags', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'Bags');
            }, ),
            SizedBox(
              height: 15,
            ),
            ShopCatButton(imgURL: "assets/images/accessories.jpg",text:  'Accessories', onPressed: () {
              Navigator.pushNamed(context, RouteNames.productCategories,
                  arguments: 'Accessories');
            }, ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
