import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Widget? prefixIcon;
  final int? maxLines;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final String labelText;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.prefixIcon,
    this.maxLines = 1,
    this.onTap,
    this.onTapOutside,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: onTapOutside,
      onTap: onTap,
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            outLineBorder(
              color: ColorManager.mainColor,
            ),
        enabledBorder: enabledBorder ??
            outLineBorder(
              color: ColorManager.gray53,
            ),
        errorBorder: outLineBorder(
          color: Colors.red,
        ),
        focusedErrorBorder: outLineBorder(
          color: Colors.red,
        ),
        hintStyle: hintStyle ??
            Styles.font20W400.copyWith(
              color: ColorManager.gray63,
            ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: prefixIcon,
        // labelText: ,
        label: Text(
          labelText,
          style: Styles.font20W400.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      obscureText: isObscureText ?? false,
      style: Styles.font20W400.copyWith(
        color: ColorManager.gray63,
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }

  OutlineInputBorder outLineBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1.3,
      ),
      borderRadius: BorderRadius.circular(
        12.0.r,
      ),
    );
  }
}
