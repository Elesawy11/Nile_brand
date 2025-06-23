import 'package:nile_brand/core/routing/exports.dart';
import 'package:nile_brand/features/User/profile/presentation/views/widgets/info_tile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widgets/get_profile_bloc_listener.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Profile",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const GetProfileBlocBuilder(),
              20.vs,
              InfoTile(
                  leadingIcon: Assets.imagesPaymentMethods,
                  title: "Payment Methods",
                  ontap: () {
                    context.push(Routes.editPaymentMethods);
                  },
                  trailling: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 17.spMax,
                  )),
              20.vs,
              InfoTile(
                  leadingIcon: Assets.imagesNotificationInfo,
                  title: "Notifications",
                  trailling: Switch(
                    value: false,
                    onChanged: (value) {},
                  )),
              20.vs,
              InfoTile(
                  ontap: () {
                    context.push(Routes.addFeedback);
                  },
                  leadingIcon: Assets.imagesFeedbackIcon,
                  title: "Feadback",
                  trailling: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 17.spMax,
                  )),
              20.vs,
              InfoTile(
                  ontap: () {
                    getIt.get<SharedPreferences>().remove('token');
                    context.pushReplacement(Routes.login);
                  },
                  leadingIcon: Assets.imagesLogOutIcon,
                  title: "Log Out",
                  trailling: SizedBox(
                    width: 12.w,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
