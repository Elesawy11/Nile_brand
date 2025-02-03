import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/profile/ui/widgets/profile_image.dart';

class Feedback extends StatelessWidget {
  const Feedback({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Feedback",style: Styles.font20W600,),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileImage(imageUrl: Assets.imagesProfileImage),

              Text(
                "User Name",
                style: Styles.font20W600,
              ),

              Text("We'r Listning",style: Styles.font35W700,),


              
            ],
          ),
        ),
      
      ),
    );
  }
}