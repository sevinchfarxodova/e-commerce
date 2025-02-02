import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/color.dart';

Widget noticeOrder(String text, String text2, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, RouteNames.orderDetailsPage);
    },
    child: Slidable(
      startActionPane: ActionPane(
        motion: DrawerMotion(),
        key: const ValueKey(0),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: (BuildContext context) {},
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: (BuildContext context) {},
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.share,
            label: 'Share',
          ),
        ],
      ),
      child: Container(
        height: 70,
        padding: EdgeInsets.only(left: 20, bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.greyColor,
        ),
        child: Row(
          children: [
            Icon(
              IconsaxPlusBroken.receipt_1,
              color: AppColors.textColor,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  Text(
                    text2,
                    style: TextStyle(color: Colors.white24, fontSize: 12),
                  ),
                ]),
            Expanded(child: Container()),
            Image.asset("assets/images/arrowright2.png"),
          ],
        ),
      ),
    ),
  );
}
