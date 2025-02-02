import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/route/route_names.dart';

class LogInAbout extends StatefulWidget {
  const LogInAbout({super.key});

  @override
  State<LogInAbout> createState() => _LogInAboutState();
}

class _LogInAboutState extends State<LogInAbout> {
  bool changeButtonColor=true;

  void changeColorMan(){
    setState(() {
      changeButtonColor=true;
    });
  }

  void changaColorWoman(){
    setState(() {
      changeButtonColor=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(padding: EdgeInsets.only(
        top: 60, left: 20, right: 20
      ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
          SizedBox(
            height: 30,
          ),
         SizedBox(height: 200,
         width: double.infinity,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Text('Tell us about yourself',style: TextStyle(
               color: Colors.white, fontSize: 30
             ),),
             SizedBox(
               height: 20,
             ),
             Text('Who do you shop for?',style: TextStyle(
                 color: Colors.white,
             ),),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 
                Expanded(child:  SizedBox(
                  height: 70,
                  child: ElevatedButton(onPressed: (){
                    changeColorMan();
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: changeButtonColor
                              ?AppColors.backgroundSplash_color
                              :Color(0xff342F3F)
                      ),
                      child: Text('Man', style: TextStyle(color: Colors.white),)),
                ),),
               SizedBox(width: 20,),
               Expanded(child:   SizedBox(
                 height: 70,
                 child: ElevatedButton(onPressed: (){
                   changaColorWoman();
                 },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: changeButtonColor
                           ?Color(0xff342F3F)
                           :AppColors.backgroundSplash_color,
                     ),
                     child: Text('Woman',
                       style: TextStyle(color: Colors.white),)),
               ),)
               ],
             ),
           ],

         ),
         ),
         SizedBox(height: 150,
         width: double.infinity,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SizedBox(height: 25,),
             Text('How old are you?',
               style: TextStyle(color: Colors.white),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff342F3F),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Age range', style: TextStyle(color: Colors.white),),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: AppColors.backgroundColor,
                                  minimumSize: Size(40, 40),
                                ),
                                onPressed: (){}, child: Image.asset("assets/images/arrowleft2.png")),
                          ],

                        ),
                      )),
                    ],
             )
           ],
         ),
         ),
         SizedBox(height: 40,
         ),
         Container(
           height: 120,
           width: double.infinity,
           color: AppColors.backgroundColor,
           child: Padding(padding: EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
           child:   ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: AppColors.backgroundSplash_color,
               minimumSize: Size(double.infinity, 49)
             ),
               onPressed: (){
                 Navigator.pushReplacementNamed(context, RouteNames.homePage);
               }, child: Center(
             child:   Text('Finish', style: TextStyle(color: Colors.white),),
           )),
           ),
         )
       ],
     ),
      ),
    );
  }
}
