import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/route/route_generator.dart';
import 'core/route/route_names.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  colorScheme: Color(Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteNames.infoPage,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
    );
  }
}
