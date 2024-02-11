import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prescribo/Main%20Presentation/Custom_SearchBar/Custom_SearchBar.dart';
import 'package:prescribo/Main%20Presentation/ListBar/CircleList/List_item_widget.dart';
import 'package:prescribo/Main%20Presentation/Page/Prescription_page.dart';
import 'package:prescribo/Main%20Presentation/precription_screen/precription_screen.dart';
import 'package:prescribo/core/utils/image_constant.dart';
import 'package:prescribo/widgets/app_bar/appbar_title.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LandingPage());
}

class LandingPage extends StatelessWidget {
  final List<String> horizonList = ['H1', 'H2', 'H3', 'H4', 'H5'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // Prescibo Title
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              SizedBox(height: 1),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 13),
                child: SearchInput(),
              ),
              SizedBox(height: 18),
              // Home List
              _buildHomeList(context),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  // Prescibo Title
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

  // List of 4 items
  Widget _buildHomeList(BuildContext context) {
    List<String> imagePaths = [
      ImageConstant.imgPrescription,
      ImageConstant.imgOrder,
      ImageConstant.imgDoctor,
      ImageConstant.imgCategory,
    ];

    List<String> textLabels = [
      "Prescription",
      "Order",
      "Consult",
      "Category",
    ];

    
    return Container(
      height: MediaQuery.of(context).size.width * 0.3, // Adjust height as needed
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 13),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 18);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return listItemWidget(
            onTapList: () {
              // Navigate to different screens based on the index
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrescriptionPage(),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrecriptionScreen(),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrecriptionScreen(),
                    ),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrecriptionScreen(),
                    ),
                  );
                  break;
                default:
              }
            },
            imagePath: imagePaths[index],
            text: textLabels[index], // Set text label based on index
          );
        },
      ),
    );
  }





}
