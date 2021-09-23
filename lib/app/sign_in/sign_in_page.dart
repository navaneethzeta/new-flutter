
import 'package:new_flutter/app/sign_in/email_sign_in_page.dart';
import 'package:new_flutter/app/sign_in/sign_in_button.dart';
import 'package:new_flutter/app/sign_in/social_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/services.dart/auth.dart';
import 'package:new_flutter/services.dart/auth_provider.dart';




class SignInPage extends StatelessWidget {
 
  Future<void> _signInAnonymously(BuildContext context) async {

   try{
    final auth= AuthProvider .of(context);
    await auth.signInAnonymously();
   }catch (e) {
    print(e.toString());
   }
  }
  Future<void> _signInWithGoogle(BuildContext context) async {

    try{
       final auth= AuthProvider .of(context);
      await auth.signInWithGoogle();
    }catch (e) {
      print(e.toString());
    }
  }
  Future<void> _signInWithFacebook(BuildContext context) async {

    try{
     final auth= AuthProvider .of(context);
      await auth.signInWithFacebook();
    }catch (e) {
      print(e.toString());
    }
  }
  void _signInWithEmail(BuildContext context){
  
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => EmailSignInPage(),
      ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIME🐒TRACKER🕐🕑🕒..'),
        elevation: 5.0,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 48.0),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign In With Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed:()=> _signInWithGoogle(context),
          ),
          SizedBox(height: 8.0),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign In With Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed:()=> _signInWithFacebook(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign In With email',
            textColor: Colors.white,
            color: Colors.teal,
            onPressed: () => _signInWithEmail(context),
          ),
          SizedBox(height: 8.0),
          Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.lime,
            onPressed:()=> _signInAnonymously(context),
          ),
        ],
      ),
    );
  }
}
