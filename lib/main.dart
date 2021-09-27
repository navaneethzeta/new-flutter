import 'package:new_flutter/app/sign_in/landing_page.dart';

import 'package:flutter/material.dart';
import 'package:new_flutter/services.dart/auth.dart';

import 'package:provider/provider.dart';
 void main()
 {
   runApp(MyApp());
 }
 class MyApp extends StatelessWidget {


   @override
   Widget build(BuildContext context) {
     return Provider<AuthBase>(
       create:(context)=>Auth(),

       child: MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'TIME 🐒TRACKER🕐🕑🕒',
         theme: ThemeData(
           primarySwatch: Colors.green,
             secondaryHeaderColor:Colors.purple,
         ),
         home:LandingPage(
          
         ),
       ),
     );
   }
 }