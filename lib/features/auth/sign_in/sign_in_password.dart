import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/auth/sign_in/sign_in_email.dart';
import 'package:commerce_clot/features/auth/widgets/custom_button.dart';
import 'package:commerce_clot/features/auth/widgets/log_in_forms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPassword extends StatelessWidget {
  const SignInPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(padding: EdgeInsets.only(right: 20, left: 20),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Sign in',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 32,
            ),
            ),
          SizedBox(height: 20,),
          LogInForms(hideText: true, text: "Password",),
          SizedBox(height: 20,),
          LogInElevated(onPressed: (){
            Navigator.pushNamed(context, RouteNames.bottomNavBar);
          }, text: 'Continue'),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Forgot Password?',
              style: TextStyle(color: Colors.white,
              fontSize: 15),),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, RouteNames.resetPage);
              }, child: Text('Reset'))
            ],
          )
        ],
      ),
      ),
    );
  }
}
