import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/home/widgets/custom_clip_rect.dart';
import 'package:commerce_clot/features/home/widgets/my_circle_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../account/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectGender = "Men";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: GestureDetector(
            onTap: () {
               Navigator.pushNamed(context, RouteNames.profilePage);
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/top_sel.jpg",
              ),
            ),
          ),
          title: Center(
            child: Container(
              padding: EdgeInsets.only(left: 12),
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: DropdownButton(
                value: selectGender,
                dropdownColor: AppColors.backgroundColor,
                underline: SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectGender = newValue!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: "Men",
                    child: Row(
                      children: [
                        Text(
                          'Men',
                          style: TextStyle(color: AppColors.textColor),
                        )
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: "Women",
                    child: Row(
                      children: [
                        Text(
                          'Women',
                          style: TextStyle(color: AppColors.textColor),
                        )
                      ],
                    ),
                  ),
                ],
                icon: Image.asset(
                  "assets/images/arrowdown.png",
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: AppColors.backgroundSplash_color,
                  minimumSize: Size(40, 40)),
              onPressed: () {},
              child: Image.asset(
                "assets/images/bag.png",
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteNames.searchPage);
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
                          prefixIcon:
                            Icon(
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(color: AppColors.textColor, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.shopCategories);
                      },
                      child: Text(
                        'See all',
                        style:
                            TextStyle(color: AppColors.textColor, fontSize: 20),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteNames.productCategories,
                            arguments: 'Hoodies');
                      },
                      child:
                          circleAvatar("assets/images/hoodies.webp", 'Hoodies'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteNames.productCategories,
                            arguments: 'Shorts');
                      },
                      child: circleAvatar("assets/images/shorts.jpg", 'Shorts'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteNames.productCategories,
                            arguments: 'Shoes');
                      },
                      child: circleAvatar("assets/images/shoes.webp", 'Shoes'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteNames.productCategories,
                            arguments: 'Bags');
                      },
                      child: circleAvatar("assets/images/bags.jpg", 'Bags'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteNames.productCategories,
                            arguments: 'Accessories');
                      },
                      child: circleAvatar(
                          "assets/images/accessories.jpg", 'Accessories'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Selling',
                    style: TextStyle(color: AppColors.textColor, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RouteNames.productCategories, arguments: 'Top Selling');
                    },
                    child: Text(
                      'See all',
                      style:
                          TextStyle(color: AppColors.textColor, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New in',
                    style: TextStyle(
                      color: AppColors.backgroundSplash_color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RouteNames.productCategories, arguments: 'New in');
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                    CustomClipTop(
                      imgURL: 'assets/images/top_sel.jpg',
                      text: "'WoMen's Harrington Jacket ",
                      price: 1755.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
