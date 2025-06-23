import '../../../../../../core/routing/exports.dart';
import '../../cubits/get_my_profile_cubit/get_my_profile_cubit.dart';
import '../../cubits/get_my_profile_cubit/get_my_profile_state.dart';
import 'info_tile.dart';
import 'profile_image.dart';

class GetProfileBlocBuilder extends StatelessWidget {
  const GetProfileBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMyProfileCubit, GetMyProfileState>(
      builder: (context, state) {
        if (state is GetMyProfileSuccess) {
          if (state.myProfile.userImage != null &&
              isValidUri(state.myProfile.userImage!)) {
            // return true;
          }
        }
        final userName = state is GetMyProfileSuccess
            ? state.myProfile.name ?? "Not Found"
            : "User Name";
        final image = state is GetMyProfileSuccess
            ? state.myProfile.userImage ?? Assets.imagesProfileImage
            : Assets.imagesProfileImage;
        return Column(
          children: [
            ProfileImage(
              isAddImage: false,
              imageUrl: image,
              backgroundImage: state is GetMyProfileSuccess
                  ? NetworkImage(state.myProfile.userImage!)
                  : const AssetImage(Assets.imagesProfileImage),
            ),
            Text(
              userName,
              style: Styles.font20W600,
            ),
            Padding(
              padding: 15.allEdgeInsets,
              child: const Divider(
                endIndent: 2,
                thickness: 1,
              ),
            ),
            InfoTile(
                leadingIcon: Assets.imagesProfileIcon,
                title: "Edit Profile",
                ontap: () {
                  context.push(Routes.editProfile, extra: {
                    "name": userName,
                    "imageUrl": image,
                  });
                },
                trailling: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17.spMax,
                )),
          ],
        );
      },
    );
  }
}
