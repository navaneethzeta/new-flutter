import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:new_flutter/app/sign_in/sign_in_page.dart';
class  LandingPage StatefulWidget {
 

  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  late User _user;
  void _updateUser(User user) {
    print('User id: ${user.uid}');

  }
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (_user==null){
    return SignInPage(
      onSignIn: _updateUser,
    );
    }
    return container();
    
  }
}