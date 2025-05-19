import 'package:flutter/material.dart';

void showSuccessDialog(BuildContext context,
    {void Function()? onPressed, required String message,required String title}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:  Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              disabledForegroundColor: Colors.grey.withValues(alpha: 0.38),
            ),
            onPressed: onPressed,
            child: const Text('Continue'),
          ),
        ],
      );
    },
  );
}
