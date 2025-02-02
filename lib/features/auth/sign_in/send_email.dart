import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(22.0),
        child: Center(
          child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                Image(width: 100,height: 100,
                  image: AssetImage("assets/images/emailPhoto.png", ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'We sent you an Email to reset \nyour password.',
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 159,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.backgroundSplash_color,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, RouteNames.createAccount);
                  }, child: Center(
                    child: Text('Return to Login',
                    style: TextStyle(color: Colors.white),),
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
