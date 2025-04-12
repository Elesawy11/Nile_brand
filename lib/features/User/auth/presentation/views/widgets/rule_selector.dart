import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/cubit/sign_up_cubit.dart';

class RuleSelector extends StatelessWidget {
  const RuleSelector({super.key});
// final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    return DropdownMenu(
      controller: cubit.ruleController,
      onSelected: (value) {
        cubit.ruleController.text = value as String;
        print("Selected value from cubit: ${cubit.ruleController.text}");
        print('value of selected value: $value');
      },
      hintText: "User",
      width: 210.w,
      menuStyle: const MenuStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white)),
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: "user", label: "User"),
        DropdownMenuEntry(value: "owner", label: "Owner"),
        DropdownMenuEntry(value: "admin", label: "Admin"),
      ],
    );
  }
}
