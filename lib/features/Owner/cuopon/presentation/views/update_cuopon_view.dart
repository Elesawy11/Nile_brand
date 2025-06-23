import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_cubit.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_state.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/update_cupon/update_cupon_cubit.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/update_cupon/update_cupon_state.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class UpdateCuoponView extends StatefulWidget {
  final CreateCuoponSuccess cupon;
  const UpdateCuoponView({super.key, required this.cupon});

  @override
  State<UpdateCuoponView> createState() => _UpdateCuoponViewState();
}

class _UpdateCuoponViewState extends State<UpdateCuoponView> {
  @override
  Widget build(BuildContext context) {
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );
      if (pickedDate != null) {
        context.read<UpdateCuponCubit>().cuponExpireDate.text =
            "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: BlocConsumer<UpdateCuponCubit, UpdateCuponState>(
            listener: (context, state) async {
              if (state is UpdateCuponSuccessState) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Cuopon updated successfully!"),
                    backgroundColor: Colors.green,
                  ));

                  // Try to refresh coupons list if GetCuponsCubit is available
                  try {
                    context.read<GetCuponsCubit>().getAllCupons();
                  } catch (_) {}

                  context.pop();
                }
              } else if (state is UpdateCuponFailureState) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Update failed"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            builder: (context, state) {
              final cubit = context.read<UpdateCuponCubit>();
              final isLoading = state is UpdateCuponLoadingState;

              return LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            30.vs,
                            Text(
                              'Update Cuopon',
                              style: Styles.font35W700,
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
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Text(
                                        cubit.cuponExpireDate.text.isEmpty
                                            ? "YYYY - MM - DD"
                                            : cubit.cuponExpireDate.text,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color:
                                              cubit.cuponExpireDate.text.isEmpty
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
                                    : () async {
                                        await cubit
                                            .updateCupon(widget.cupon.id!);
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
