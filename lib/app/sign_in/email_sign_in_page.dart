import 'package:flutter/material.dart';
import 'package:new_flutter/app/sign_in/email_sign_in_form.dart';
import 'package:new_flutter/services.dart/auth.dart';

class EmailSignInPage  extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        elevation: 5.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: EmailSignInForm(),
            ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }

   
}