import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_flutter/common_widgets/platform_alert_dialog.dart';

class PlatformExceptionAlertDialog extends PlatformAlertDialog {
  PlatformExceptionAlertDialog({
    @required String title,
     @required PlatformException exception
     }): super(
       title: title,
       content: _message(exception),
       defaultActionText: 'OK'
     );
     static String _message(PlatformException exception) {
       return _errors [exception.code] ?? exception.message;
     }
     static Map<String, String> _errors={
       // .'ERROR_WEAK_PASSWORD' -If the password is not strong enough.
       // .'ERROR_INVALID_CREDENTIAL' - If the email address is malformed.
       // .'ERROR_EMAIL_ALREADY_IN_USE' - If the email is already in use.
       // .'ERROR_INVALID_EMAIL' -if the email ismalformed.
      'ERROR_WRONG_PASSWORD':'the password is invalid',
       // .'ERROR_USER_NOT_FOUND' - If there is no user corresponding to the email address.
       //.'ERROR_USER_DISABLED' - If
       // .'ERROR_OPERATION_NOT_FPUND'-
     };
}

  

