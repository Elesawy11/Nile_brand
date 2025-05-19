import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class UpdateCuoponView extends StatefulWidget {
  const UpdateCuoponView({super.key});

  @override
  State<UpdateCuoponView> createState() => _UpdateCuoponViewState();
}

class _UpdateCuoponViewState extends State<UpdateCuoponView> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text =
            "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        30.vs,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Update Cuopon',
                            style: Styles.font35W700,
                          ),
                        ),
                        33.vs,
                        SizedBox(
                          height: 50.h,
                          child: AppTextFormField(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "SUMMER2024",
                            labelText: "Name",
                            validator: (p0) {},
                          ),
                        ),
                        20.vs,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expire time",
                              style: Styles
                                  .font14W500.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600
                                  ), // غيّريها حسب الـ style المناسب لكِ
                            ),
                            8.vs,
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => _selectDate(context),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 14.h),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          _dateController.text.isEmpty
                                              ? "YYYY - MM - DD"
                                              : _dateController.text,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: _dateController.text.isEmpty
                                                ? Colors.grey
                                                : Colors.black,
                                          ),
                                        ),
                                       
                                      ],
                                    ),
                                  ),
                                ),
                                11.hs,
                                 Icon(Icons.calendar_today,
                                            size: 26.sp, color: Colors.grey),
                              ],
                            ),
                          ],
                        ),

                        20.vs,
                        SizedBox(
                          height: 50.h,
                          child: AppTextFormField(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "20.0",
                            labelText: "discount",
                            validator: (p0) {},
                          ),
                        ),
                        const Spacer(), // هذا الآن سيعمل لأننا وفرنا له مساحة عبر IntrinsicHeight
                        Padding(
                          padding: 70.ph,
                          child: AppTextButton(
                            backgroundColor: ColorManager.mainColor,
                            text: "Save",
                            onPressed: () {
                              context.pop();
                            },
                          ),
                        ),
                        45.vs,
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
