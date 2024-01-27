import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import the lottie package
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
                child: Lottie.network(
                  'https://lottie.host/107f35f2-e4ba-4246-a798-83d178f43c3a/GHGO7v7YGO.json',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                text: 'Welcome to Prescribo',
              ),
              // Page 2 with Lottie animation
              _buildPage(
                backgroundColor: Color.fromARGB(255, 116, 234, 255),
                child: Lottie.network(
                  'https://lottie.host/22785cc3-38e4-48bf-895d-d15c13bf0fa6/ElJv16ajKG.json',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                text: 'Getting Started with Prescribo',
              ),
              // Page 3 with Lottie animation
              _buildPage(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: Lottie.network(
                  'https://lottie.host/a2087a7a-101c-4723-8490-f3ade33e4192/7wU0kwBN0N.json',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
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
                  if (controller.page!.toInt() == 2)
                    Navigator.pushNamed(context, AppRoutes.onboardingScreen);
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
    required Widget child,
    required String text,
  }) {
    return Container(
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child,
          const SizedBox(height: 20),
          Text(text),
        ],
      ),
    );
  }

}
