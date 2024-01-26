import 'package:flutter/material.dart';
import 'package:prescribo/NavigationBar/Page/Profile/Profile_Menu.dart';
import 'package:prescribo/NavigationBar/Page/Profile/Profile_Pic.dart';
import 'package:prescribo/core/utils/image_constant.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: ImageConstant.imgAccount,
              press: () {},
            ),
            ProfileMenu(
              text: "Prescriptions",
              icon: ImageConstant.imgPrescriptionAccount,
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: ImageConstant.imgSettings,
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: ImageConstant.imgHelpCentre,
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: ImageConstant.imgLogOut,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
