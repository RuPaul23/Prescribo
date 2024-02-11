import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prescribo/Main%20Presentation/Widget/custom_shapes/containers/primaryHeaderConatiner.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LandingPage());
}

class LandingPage extends StatelessWidget {
  final List<String> horizonList = ['H1', 'H2', 'H3', 'H4', 'H5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(child: Column(

            ),),
          ],
        ),
      ),
    );
  }
}


