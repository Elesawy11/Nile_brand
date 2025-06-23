import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/create_cupon.dart/create_cupon_cubit.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/create_cupon.dart/create_cupon_state.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_cubit.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class CreateCuoponView extends StatefulWidget {
  const CreateCuoponView({super.key});

  @override
  State<CreateCuoponView> createState() => _CreateCuoponViewState();
}

class _CreateCuoponViewState extends State<CreateCuoponView> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      context.read<CreateCuponCubit>().cuponExpireDate.text =
          "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: BlocConsumer<CreateCuponCubit, CuponState>(
            listener: (context, state) async {
              if (state is CreateCuponSucessState) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Cupon Created Successfully!"),
                  backgroundColor: Colors.green,
                ));
                context.pop();
              } else if (state is CreateCuponFailureState) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Something went wrong"),
                  backgroundColor: Colors.red,
                ));
              }
            },
            builder: (context, state) {
              final cubit = context.read<CreateCuponCubit>();
              final isLoading = state is CreateCuponLoadingState;

              return LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            30.vs,
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Create Cuopon',
                                style: Styles.font35W700,
                              ),
                            ),
                            33.vs,
                            AppTextFormField(
                              controller: cubit.cuponName,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: "SUMMER2024",
                              labelText: "Name",
                              validator: (p0) {},
                            ),
                            20.vs,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expire time",
                                  style: Styles.font14W500.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                8.vs,
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () => _selectDate(context),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.w, vertical: 14.h),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                          ),
                                          child: Text(
                                            cubit.cuponExpireDate.text.isEmpty
                                                ? "YYYY - MM - DD"
                                                : cubit.cuponExpireDate.text,
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: cubit.cuponExpireDate.text
                                                      .isEmpty
                                                  ? Colors.grey
                                                  : Colors.black,
                                            ),
                                          ),
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
                            AppTextFormField(
                              controller: cubit.discount,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: "20.0",
                              labelText: "Discount",
                              validator: (p0) {},
                            ),
                            const Spacer(),
                            Padding(
                              padding: 70.ph,
                              child: AppTextButton(
                                backgroundColor: ColorManager.mainColor,
                                text: isLoading ? "Saving..." : "Save",
                                onPressed: isLoading
                                    ? null
                                    : () {
                                        context
                                            .read<CreateCuponCubit>()
                                            .createCupon();
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
              );
            },
          ),
        ),
      ),
    );
  }
}
