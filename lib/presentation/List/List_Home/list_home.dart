import 'package:flutter/material.dart';
import 'package:prescribo/presentation/Home%20Screens/PrescriptionPage/Prescription_page.dart';
import 'package:prescribo/presentation/List/ListBar/CircleList/List_item_widget.dart';
import 'package:prescribo/core/utils/image_constant.dart';

// ignore: camel_case_types
class List_Home extends StatelessWidget {
  const List_Home({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
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
      height:
          MediaQuery.of(context).size.width * 0.3, // Adjust height as needed
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
                      builder: (context) => PrescriptionPage(),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrescriptionPage(),
                    ),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrescriptionPage(),
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