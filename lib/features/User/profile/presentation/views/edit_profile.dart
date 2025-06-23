import 'package:nile_brand/core/routing/exports.dart';
import 'widgets/info_tile.dart';
import 'widgets/profile_image.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key, required this.name, required this.imageUrl});
  final String name;
  final String imageUrl;
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Edit Profile",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              18.vs,
              ProfileImage(
                imageUrl: Assets.imagesProfileImage,
                backgroundImage: isValidUri(widget.imageUrl)
                    ? NetworkImage(widget.imageUrl)
                    : const AssetImage(Assets.imagesProfileImage),
              ),
              50.vs,
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: AppTextFormField(
                  hintText: widget.name,
                  labelText: widget.name,
                  validator: (p0) {},
                ),
              ),
              50.vs,
              // 25.vs,
              InfoTile(
                leadingIcon: Assets.imagesLock,
                title: "Edit Password",
                ontap: () {
                  context.push(Routes.editPassword);
                },
                trailling: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17.spMax,
                ),
              ),
              50.vs,
              Padding(
                padding: 70.ph,
                child: AppTextButton(
                  backgroundColor: ColorManager.mainColor,
                  text: "Save Changes",
                  onPressed: () {
                    context.pop();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
