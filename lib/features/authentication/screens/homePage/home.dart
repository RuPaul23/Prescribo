import 'package:flutter/material.dart';
import 'package:prescribo/features/authentication/screens/homePage/widgets/customHomeAppBar.dart';
import 'package:prescribo/presentation/Widget/custom_shapes/containers/primaryHeaderConatiner.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [


        

            
            ///Header
            CustomPrimaryHeaderContainer(
              child: Column(
                children: [
                  //----   App Bar  ----
                  CustomHomeAppBar(),

                  

                  //----   Search Bar  ----

                  //----   Banner  ----

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
