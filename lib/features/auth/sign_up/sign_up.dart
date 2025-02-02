import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/auth/widgets/arrow.dart';
import 'package:commerce_clot/features/auth/widgets/custom_button.dart';
import 'package:commerce_clot/features/auth/widgets/log_in_forms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Arrow(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.signInEmail);
                  },
                  imgURL: "assets/images/arrowleft2.png",
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 230,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LogInForms(
                        hideText: false,
                        text: "First Name",
                      ),
                      LogInForms(
                        hideText: false,
                        text: "Last Name",
                      ),
                      LogInForms(
                        hideText: false,
                        text: "Email Address",
                      ),
                      LogInForms(
                        hideText: true,
                        text: "Password",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                LogInElevated(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.logInAbout);
                    },
                    text: "Continue"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'You already have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.signInEmail);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('Sign in'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
