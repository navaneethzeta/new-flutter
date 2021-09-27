
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/common_widgets/platform_widget.dart';

class PlatformAlertDialog extends PlatformWidget{
   PlatformAlertDialog({
     @required this.title,
     @required this.content,
     this.cancelActionText,
     @required this.defaultActionText
     }):assert(title!= null), assert(content != null), assert(defaultActionText != null);
  final String title;
  final String content;
  final String cancelActionText;
  final String defaultActionText;
  Future<bool>show(BuildContext context) async{
    return Platform.isIOS
    ? await showCupertinoDialog<bool>(context: context, builder: (context)=> this)
    : await showDialog<bool>(
      context: context,
      builder:(context)=>this,

      );
  }

  @override
  Widget buildCoupertinoWidget(BuildContext context) {
     return CupertinoAlertDialog(
       title: Text(title),
     content:Text(content),
     actions: _buildActions(context),
     );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
   return AlertDialog(
     title: Text(title),
     content:Text(content),
     actions: _buildActions(context),
   );
  }
  List<Widget> _buildActions( BuildContext context) {
    final action =<Widget>[];
    if (cancelActionText!= null){
      action.add(PlatformAlertDialogAction (
                    child:Text(cancelActionText),
                    onPressed: () => Navigator.of(context).pop(false),
                    ),
                    );
    }
    return [PlatformAlertDialogAction (
                    child:Text(defaultActionText),
                    onPressed: () => Navigator.of(context).pop(true),
                    ),

    ];
  }

}
class PlatformAlertDialogAction extends PlatformWidget{
  PlatformAlertDialogAction({this.child, this.onPressed});
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget buildCoupertinoWidget(BuildContext context) {
   return CupertinoDialogAction(
     child: child,
     onPressed: onPressed,
     );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return FlatButton(
      child: child,
      onPressed: onPressed,
    );
  }

  
}