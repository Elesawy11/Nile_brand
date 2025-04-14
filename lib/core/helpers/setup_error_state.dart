import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/styles.dart';

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: Styles.font16W400,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: Styles.font17W500,
          ),
        ),
      ],
    ),
  );
}
