import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_text_form_field.dart';

class PasswordField extends StatelessWidget {
  final ValueNotifier<bool> viewPass;
  final String labelText;
  final String hintText;

  const PasswordField({
    super.key,
    required this.viewPass,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: viewPass,
      builder: (context, value, child) {
        return AppTextFormField(
          labelText: labelText,
          hintText: hintText,
          isObscureText: viewPass.value,
          suffixIcon: IconButton(
            onPressed: () {
              viewPass.value = !value;
            },
            icon: viewPass.value
                ? const Icon(Icons.visibility_off_outlined)
                : const Icon(Icons.visibility_outlined),
          ),
          validator: (p0) {},
        );
      },
    );
  }
}