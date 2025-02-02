import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/notification/widgets/notice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool hasNotification = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: Text(
            'Notifications',
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: hasNotification
            ? Padding(padding: EdgeInsets.only(top: 40,left: 10, right: 10),
          child: ListView(
            children: [
            notice('check your instagram account you have a message, your friend said that you are the best one',
            ),
              notice('check your instagram account you have a message, your friend said that you are the best one'),
              notice('check your instagram account you have a message, your friend said that you are the best one'),
              notice('check your instagram account you have a message, your friend said that you are the best one'),
              notice('check your instagram account you have a message, your friend said that you are the best one'),
            ],
          ),
            )
            :SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/bell.png',
                height: 70,
                width: 70,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'No Notification yet',
                style: TextStyle(color: AppColors.textColor, fontSize: 24),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.backgroundSplash_color,
                    minimumSize: Size(185, 52),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.shopCategories);
                  },
                  child: Text(
                    'Explore Categories',
                    style:
                    TextStyle(color: AppColors.textColor, fontSize: 16),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
