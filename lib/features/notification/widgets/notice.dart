import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../core/constants/color.dart';

Widget notice (String text,){
  return Slidable(
    key: const ValueKey(0),
    startActionPane: ActionPane(
      motion:  DrawerMotion(),

      dismissible: DismissiblePane(onDismissed: () {}),

      children:  [
        SlidableAction(
          onPressed: (BuildContext context){},
          backgroundColor: Color(0xFFFE4A49),
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
        ),
        SlidableAction(
          onPressed:(BuildContext context){},
          backgroundColor: Color(0xFF21B7CA),
          foregroundColor: Colors.white,
          icon: Icons.share,
          label: 'Share',
        ),
      ],
    ),

    child: Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.greyColor,
        ),
        child: Row(
          children: [
            Image.asset('assets/images/notification.png'),
            SizedBox(width: 10,),
            Expanded(
              child: Text(text, style: TextStyle(color: AppColors.textColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}