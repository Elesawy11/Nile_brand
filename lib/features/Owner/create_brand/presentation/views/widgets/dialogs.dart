import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../owner_helpers.dart';

void showAlertDialog(BuildContext context, String message, String title,
    Color color, VoidCallback? onOkPressed) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text(title,
          style: TextStyle(color: color, fontWeight: FontWeight.bold)),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // dismiss the dialog
            if (onOkPressed != null) {
              onOkPressed();
            }
          },
          child: const Text("OK"),
        ),
      ],
    ),
  );
}

Future<File> saveImagePermanently(String imagePath) async {
  final directory = await getApplicationDocumentsDirectory();
  final name = imagePath.split('/').last;
  final image = File(imagePath);
  final newImage = await image.copy('${directory.path}/$name');
  return newImage;
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text("Success",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
      content: const Text("Brand Created Successfully!"),
      actions: [
        TextButton(
          onPressed: () async {
            Navigator.of(context).pop(); // Close dialog
            final brandData = await BrandStorage.getBrandData();
            if (context.mounted) {
              context.go(Routes.ownerHome, extra: brandData.id);
            }
          },
          child: const Text("OK"),
        ),
      ],
    ),
  );
}
