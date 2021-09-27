
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/common_widgets/platform_alert_dialog.dart';
import 'package:new_flutter/services.dart/auth.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  
  Future<void> _signOut(BuildContext context) async {
    
   try{
      final auth=Provider.of<AuthBase>(context, listen: false);
    await auth.signOut();
  }catch (e) {
    print(e.toString());
   }
  }
  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await PlatformAlertDialog(
          title: 'LOGOUT',
           content:'Are you sure you want to sign out',
            defaultActionText:'logout',
            cancelActionText: 'cancel',
    ).show(context);
    if (didRequestSignOut==true){
      _signOut(context);
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
            onPressed:()=>  _confirmSignOut(context),
            )
        ],
      ),
    );
  }
}