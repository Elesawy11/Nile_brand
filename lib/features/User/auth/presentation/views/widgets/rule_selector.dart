import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RuleSelector extends StatelessWidget {
  const RuleSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        hintText: "Customer",
        width: 210.w,
        menuStyle: const MenuStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white)),
        dropdownMenuEntries: const [
          DropdownMenuEntry(value: "customer", label: "Customer"),
          DropdownMenuEntry(value: "owner", label: "Owner"),
          DropdownMenuEntry(value: "admin", label: "Admin"),
        ]);
  }
}
