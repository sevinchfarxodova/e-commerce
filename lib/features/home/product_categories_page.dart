import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/auth/widgets/arrow.dart';
import 'package:commerce_clot/features/home/widgets/custom_clip_rect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCategoriesPage extends StatelessWidget {
  String? category;

  ProductCategoriesPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.only(top: 50, left: 12, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arrow(
                onPressed: () {
                  Navigator.pop(context);
                },
                imgURL: "assets/images/arrowleft2.png",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                category!,
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                    childAspectRatio: 0.6,
                    children: [
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
      ),
    );
  }
}
