import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/utils/color_manager.dart';

class ProfileImage extends StatefulWidget {
  final String? imageUrl;
  final XFile? selectedImage;
  final void Function(XFile image)? onImagePicked;

  const ProfileImage({
    super.key,
    this.imageUrl,
    this.selectedImage,
    this.onImagePicked,
  });

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  XFile? _pickedImage;

  @override
  void initState() {
    super.initState();
    _pickedImage = widget.selectedImage;
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    try {
      final image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null && await File(image.path).exists()) {
        setState(() {
          _pickedImage = image;
        });
        widget.onImagePicked?.call(image); // نمرر الصورة إلى الكيوبت
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider;

    if (_pickedImage != null) {
      imageProvider = FileImage(File(_pickedImage!.path));
    } else if (widget.imageUrl != null) {
      imageProvider = AssetImage(widget.imageUrl!) as ImageProvider;
    } else {
      imageProvider = const AssetImage('assets/images/default_profile.png');
    }

    return Center(
      child: CircleAvatar(
        radius: 50.r,
        backgroundImage: imageProvider,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: IconButton(
            onPressed: _pickImage,
            icon: const Icon(Icons.camera_alt, color: ColorManager.mainColor),
          ),
        ),
      ),
    );
  }
}
