import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
          padding: const EdgeInsets.only(bottom: 60),
          child: PageView(
            controller: controller,
            children: [
              // Page 1 with Lottie animation
              _buildPage(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                assetPath: 'assets/animation/onloading_1.json',
                text: 'Welcome to Prescribo',
              ),
              // Page 2 with Lottie animation
              _buildPage(
                backgroundColor: Color.fromARGB(255, 116, 234, 255),
                assetPath: 'assets/animation/onloading_2.json',
                text: 'Getting Started with Prescribo',
              ),
              // Page 3 with Lottie animation
              _buildPage(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                assetPath: 'assets/animation/onloading_3.json',
                text: 'Effortless Prescription & Health Management',
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
                    activeDotColor: Color.fromARGB(255, 63, 125, 240),
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
                  if (controller.page!.toInt() == 2) {
                    Navigator.pushNamed(context, AppRoutes.loginPage);
                  }
                  else {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      );

  Widget _buildPage({
    required Color backgroundColor,
    required String assetPath,
    required String text,
  }) {
    return Container(
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            assetPath,
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(text),
        ],
      ),
    );
  }
}
