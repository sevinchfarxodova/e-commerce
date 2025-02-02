import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/auth/widgets/custom_button.dart';
import 'package:commerce_clot/features/auth/widgets/log_in_forms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/arrow.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(padding: EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Arrow(onPressed: () {
              Navigator.pushNamed(context, RouteNames.signInEmail);
            },
              imgURL: "assets/images/arrowleft2.png",
            ),
            SizedBox(height: 20,),
            Text('Forgot Password',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32
              ),
            ),
            SizedBox(height: 20,),
            LogInForms(hideText: false, text: 'Enter Email adress',),
            SizedBox(height: 30,),
            LogInElevated(onPressed: (){
              Navigator.pushNamed(context, RouteNames.sendEmailPage);},
                text:"Continue" ),
            SizedBox(height: 300,)
          ],
        ),
      ),
    );
  }
}
