import 'package:flutter/material.dart';
import 'package:prescribo/NavigationBar/Page/Calender_page.dart';
import 'package:prescribo/NavigationBar/Page/Prescription_page.dart';
import 'package:prescribo/NavigationBar/home_screen/widgets/homelist_item_widget.dart';
import 'package:prescribo/NavigationBar/precription_screen/precription_screen.dart';
import 'package:prescribo/core/utils/image_constant.dart';
import 'package:prescribo/theme/app_decoration.dart';
import 'package:prescribo/theme/custom_button_style.dart';
import 'package:prescribo/theme/custom_text_style.dart';
import 'package:prescribo/theme/theme_helper.dart';
import 'package:prescribo/widgets/app_bar/appbar_title.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_elevated_button.dart';
import 'package:prescribo/widgets/custom_search_view.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        //this function PreferredSizeWidget is used to set the height of the appbar
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 13),
                child: CustomSearchView(
                  controller: TextEditingController(),
                  hintText: "Search doctor, drugs, articles...",
                ),
              ),
              SizedBox(height: 18),
              _buildHomeList(context),
              SizedBox(height: 9),
              /*_buildCtaStack(context),
              SizedBox(height: 2),
              _buildTextRow(context),
              SizedBox(height: 13),
              _buildPillsWhiteRow(context),*/
            ],
          ),
        ),
      ),
    );
  }

//Headline Prescribo and Notification Icon
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 65,
      title: AppbarTitle(
        text: "prescribo",
        margin: EdgeInsets.only(left: 24),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(22, 19, 22, 17),
        ),
      ],
    );
  }




//Home List
Widget _buildHomeList(BuildContext context) {
    return Scaffold(
      
    );
  }














  
}
