import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/account/widgets/address_edit_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class AddressEdit extends StatelessWidget {
  const AddressEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: AppColors.greyColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(IconsaxPlusBroken.arrow_left_2,
            color: AppColors.textColor,),
        ),
        title: Text("Address",
        style: TextStyle(
          color: AppColors.textColor,
          fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,
      ),
          body: Padding(padding: EdgeInsets.only(
            left: 15,
            right: 15
          ),
          child: Column(
            children: [
              SizedBox(height: 20,),
              AddressEditWidget(),
              AddressEditWidget(),
            ],
          ),
          ),
    ));
  }
}
