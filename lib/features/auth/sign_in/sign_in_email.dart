import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/auth/widgets/log_in_forms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LogInForms(
              text: 'Email Address', hideText: false,),
            const SizedBox(
              height: 20,
            ),
            LogInElevated(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.signInPassword);
              },
              text: 'Continue',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(color: AppColors.textColor, fontSize: 12),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.createAccount);
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: AppColors.textColor,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  child: Text(
                    'Create One',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            elevatedButton(
            Icons.apple, "Continue with Apple"),
            SizedBox(height: 20,),
            elevatedButton(
                Icons.g_mobiledata_outlined, "Continue with Google"),
            SizedBox(height: 20,),
            elevatedButton(
                Icons.facebook, "Continue with FaceBook"),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

Widget elevatedButton(IconData icon, String text) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white12,
      minimumSize: Size(double.infinity, 60),
    ),
    onPressed: () {},
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: AppColors.textColor,
            size: 25,
          ),
          Text(text,
          style: TextStyle(
            fontSize: 16, color: AppColors.textColor,
          ),),
          SizedBox(width: 16,)
        ],
      ),
    ),
  );
}
