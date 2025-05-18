import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/signup_cubit/sign_up_cubit.dart';

class RuleSelector extends StatelessWidget {
  const RuleSelector({super.key});
// final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    return SizedBox(
      height: 40.h,
      child: DropdownMenu(
        controller: cubit.ruleController,
        onSelected: (value) {
          cubit.ruleController.text = value ?? "user";
        },
        hintText: "User",
        width: 210.w,
        menuStyle:
            MenuStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),
        dropdownMenuEntries: const [
          DropdownMenuEntry(value: "user", label: "User"),
          DropdownMenuEntry(value: "owner", label: "Owner"),
          DropdownMenuEntry(value: "admin", label: "Admin"),
        ],
      ),
    );
  }
}
