import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/utils/color_manager.dart';

class ProfileImage extends StatelessWidget {
  final String imageUrl;
  const ProfileImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 50.r,
        backgroundImage:  AssetImage(imageUrl),
        child: Container(
            margin: EdgeInsets.only(top: 60.h),
            child: IconButton(
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
        
                  try {
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);
        
                    if (image != null) {
                      
                      if (await File(image.path).exists()) {
                        
                          //  imageUrl = image.path;
                          // change profile image
                        
                      }
                    }
                  } catch (e) {
        
                    // handle exceptions 
                    print("Error picking image: $e");
                  }
                },
                icon: const Icon(
                  Icons.camera_enhance,
                  color: ColorManager.mainColor,
                ))),
      ),
    );
  }
}
