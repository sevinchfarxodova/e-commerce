import 'dart:async';
import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/core/route/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, RouteNames.signInEmail);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash_color,
      body: Center(
        child: Image.asset("assets/images/splash_clot.png"),
      ),
    );
  }
}
