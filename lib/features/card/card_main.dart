import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CardMain extends StatelessWidget {
  const CardMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: AppColors.greyColor,
            ),
            onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(IconsaxPlusBroken.arrow_left_2,
          color: AppColors.textColor,)),
      ),
      body: Padding(padding: EdgeInsets.all(22),
      child: Center(
        child: SizedBox(
          height: 550,
          width: double.infinity,
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/parcel.png')),
              SizedBox(height: 30,),
              Text('Your card is empty',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 200,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.backgroundSplash_color,
                    minimumSize: Size(double.infinity, 50),
                  ),
                    onPressed: (){
                      Navigator.pushNamed(context, RouteNames.shopCategories);
                    },
                    child: Center(
                  child: Text('Explore Categories',
                  style: TextStyle(color: AppColors.textColor),),
                )),
              )
            ],
          ),
        ),
      ),),
    );
  }
}
