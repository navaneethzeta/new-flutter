import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/app/sign_in/home_page.dart';


import 'package:new_flutter/app/sign_in/sign_in_page.dart';
class  LandingPage extends StatefulWidget {
  
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
   User? _user;
   void _updateUser(User user) {
    setState(() {
      _user = user;
    });
  }


 
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (_user == null) {
      return SignInPage(
        onSignIn: _updateUser,
      );
    }
    return HomePage(
      onSignOut: () => _updateUser,
    );
      
  }
  }

 
