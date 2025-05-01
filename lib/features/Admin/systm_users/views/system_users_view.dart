import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/systm_users/views/widgets/all_user_tile.dart';
import 'package:nile_brand/features/Admin/systm_users/views/widgets/create_user_tile.dart';
import '../../../../core/utils/styles.dart';

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
          child: Column(
            children: [
              20.vs,
              const CreateUserTile(),
              14.vs,
              const AllUserTile()
            ],
          ),
        ),
      ),
    ));
  }
}
