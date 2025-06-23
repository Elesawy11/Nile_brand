import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/create_cupon.dart/create_cupon_cubit.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/create_cupon.dart/create_cupon_state.dart';

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
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: BlocBuilder<CreateCuponCubit, CuponState>(
                        builder: (context, state) {
                      return Column(
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
                          SizedBox(
                            height: 50.h,
                            child: AppTextFormField(
                              controller:
                                  context.read<CreateCuponCubit>().cuponName,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
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
                                style: Styles.font14W500.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
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
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            context
                                                    .read<CreateCuponCubit>()
                                                    .cuponExpireDate
                                                    .text
                                                    .isEmpty
                                                ? "YYYY - MM - DD"
                                                : context
                                                    .read<CreateCuponCubit>()
                                                    .cuponExpireDate
                                                    .text,
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: context
                                                      .read<CreateCuponCubit>()
                                                      .cuponExpireDate
                                                      .text
                                                      .isEmpty
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
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: "20.0",
                              labelText: "discount",
                              validator: (p0) {},
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: 70.ph,
                            child: AppTextButton(
                              backgroundColor: ColorManager.mainColor,
                              text: state is CreateCuponLoadingState
                                  ? "Save...."
                                  : "Save",
                              onPressed: () {
                                context.read<CreateCuponCubit>().createCupon();
                                if (state is CreateCuponSucessState) {
                                  context.pop();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(
                                        SnackBar(
                                          closeIconColor: Colors.green,
                                          content:Text("Cupon Created Successfully !",style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white
                                          ),)
                                          )
                                      );
                                }
                                else if(state is CreateCuponFailureState){
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(
                                        SnackBar(
                                          closeIconColor: Colors.redAccent,
                                          content:Text("Something went wrong",style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white
                                          ),)
                                          )
                                      );



                                }
                              },
                              
                            ),
                          ),
                          45.vs,
                        ],
                      );
                    }),
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
