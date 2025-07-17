import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/systm_users/data/api/system_users_source.dart';
import 'package:nile_brand/features/Admin/systm_users/data/repo/system_users_repo.dart';
import 'package:nile_brand/features/Admin/systm_users/views/manager/system_user_cubit.dart';
import 'package:nile_brand/features/Admin/systm_users/views/widgets/all_user_tile.dart';
import 'package:nile_brand/features/Admin/systm_users/views/widgets/create_user_tile.dart';
import '../../../../core/utils/styles.dart';

import 'manager/system_user_state.dart';

class SystemUsersView extends StatelessWidget {
  const SystemUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "User Management",
          style: Styles.font30W700,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: 12.allEdgeInsets,
          child: BlocProvider<SystemUsersCubit>(
            create: (context) => SystemUsersCubit(
              SystemUsersRepo(
                systemUsersSource: SystemUsersSource(DioFactory.getDio()),
              ),
            )..getSystemUsers(),
            child: BlocConsumer<SystemUsersCubit, SystemUsersState>(
              listener: (context, state) {
                if (state is SystemUserCreateSuccess) {
                  context.read<SystemUsersCubit>().getSystemUsers();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('User Created: ${state.newUser.name}')),

                  );
                } else if (state is SystemUserDeleteSuccess) {
                  context.read<SystemUsersCubit>().getSystemUsers();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );

                } else if (state is SystemUserUpdateSuccess) {

                  context.read<SystemUsersCubit>().getSystemUsers();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );

                } else if (state is SystemUsersFailure) {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error: ${state.error}")),
                  );
                }
              },
              builder: (context, state) {
                // final cubit = context.read<SystemUsersCubit>();
                return Column(
                  children: [
                    20.vs,
                    const CreateUserTile(),
                    14.vs,
                    if (state is SystemUsersLoading)
                      const CircularProgressIndicator()

                    else if (state is SystemUsersLoadSuccess)

                      AllUserTile(users: state.users)
                    else if (state is SystemUsersFailure)
                      Text("Error: ${state.error}",
                          style: const TextStyle(color: Colors.red))
                    else
                      const Text("No users loaded."),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ));
  }
}
