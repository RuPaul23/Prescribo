import 'package:flutter/material.dart';
import 'package:prescribo/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            children: [
              Container(
                color: Color.fromARGB(255, 255, 108, 17),
                child: const Center(
                  child: Text('Page1'),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 116, 234, 255),
                child: const Center(
                  child: Text('Page 2'),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 92, 255, 17),
                child: const Center(
                  child: Text('Page 3'),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                child: const Text('Skip'),
                onPressed: () => controller.jumpToPage(2),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                  onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  ),
                ),
              ),
              TextButton(
                child: const Text('Next'),
                onPressed: () {
                  if (controller.page!.toInt() == 2)
                  controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  else{
                    onTapBtnIconButton(context);
                  }
                },
              ),
            ],
          ),
        ),
      );

  void onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreen);
  }
}
