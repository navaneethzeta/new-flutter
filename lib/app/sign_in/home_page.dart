import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({required this.onSignOut});
  final VoidCallback onSignOut;
  Future<void> _signOut() async {
    await Firebase.initializeApp();
   try{
  
    await FirebaseAuth.instance.signOut();
    onSignOut();
  }catch (e) {
    print(e.toString());
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          TextButton(
            child: Text('Logout', style: TextStyle(fontSize: 18.0, color:Colors.white,),),
            onPressed: _signOut,
            )
        ],
      ),
    );
  }
}