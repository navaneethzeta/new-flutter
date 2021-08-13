import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'package:new_flutter/app/sign_in/sign_in_page.dart';
class  LandingPage extends StatefulWidget {
  
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
   User? _user;
  void _updateUser(User user) {
    print('User id: ${user.uid}');
  }


 
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (_user==null) {
      return SignInPage(
        onSignIn: _updateUser,
      );
    }
    return Container();
      
  }
  }

 
