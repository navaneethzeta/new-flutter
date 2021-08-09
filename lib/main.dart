import 'package:new_flutter/app/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
 void main()
 {
   runApp(MyApp());
 }
 class MyApp extends StatelessWidget {


   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'TIME 🐒TRACKER🕐🕑🕒',
       theme: ThemeData(
         primarySwatch: Colors.green,
           secondaryHeaderColor:Colors.purple,
       ),
       home:SignInPage(),
     );
   }
 }