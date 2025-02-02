import 'package:commerce_clot/features/orders/widgets/orderNotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
       appBar:  AppBar(
        backgroundColor: AppColors.backgroundColor,
         bottom:  PreferredSize(
       preferredSize: Size.fromHeight(0),
       child: Container(
         height: 50,
         padding: EdgeInsets.all(5),
         color: AppColors.backgroundColor,
         child: TabBar(
           tabAlignment: TabAlignment.start,
           dividerColor: Colors.transparent,
           isScrollable: true,
           indicator: BoxDecoration(
             color: AppColors.backgroundSplash_color,
             borderRadius: BorderRadius.circular(25),
           ),
           labelColor: AppColors.textColor, //tanalagandagi rang
           unselectedLabelColor: AppColors.textColor,
           labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
           tabs: [
             Tab(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12, ),
                 child: Text('Processing'),
               ),
             ),
             Tab(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12, ),
                 child: Text('Shipped'),
               ),
             ),
             Tab(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12, ),
                 child: Text('Delivered'),
               ),
             ),
             Tab(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12, ),
                 child: Text('Returned'),
               ),
             ),
             Tab(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12, ),
                 child: Text('Canceled'),
               ),
             ),
           ],
         ),
       ),
         ),
      ),
        body: TabBarView(
          children: [
           Padding(
            padding: EdgeInsets.all(8),
            child: ListView(
              children: [
                SizedBox(height: 5,),
                noticeOrder('Order #456891', '4 times',context),
                SizedBox(height: 15,),
                noticeOrder('Order #456741', '3 times',context),
                SizedBox(height: 15,),
                noticeOrder('Order #456741', '3 times',context),
                SizedBox(height: 15,),
                noticeOrder('Order #456365', '2 times',context),
              ],
            ),
          ),
          Center(
            child: Text('Shipped',
            style: TextStyle(color: AppColors.textColor),),
          ),
            Center(
              child: Text('Delivered',
                style: TextStyle(color: AppColors.textColor),),
            ),
            Center(
              child: Text('Returned',
                style: TextStyle(color: AppColors.textColor),),
            ),
            Center(
              child: Text('Cancelled',
                style: TextStyle(color: AppColors.textColor),),
            ),
          ]
        ),
      ),
    );
  }
}
