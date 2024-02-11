import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prescribo/Main%20Presentation/Main-Rounting/MainRounting.dart';
import 'package:prescribo/core/utils/new_utils/theme/theme.dart';
import 'package:prescribo/core/utils/size_utils.dart';
import 'package:prescribo/routes/app_routes.dart';
import 'package:prescribo/theme/theme_helper.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Ensure portrait orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Change theme if required
  ThemeHelper().changeTheme('primary');

  runApp(MyApp());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {

        return MaterialApp(
          themeMode: ThemeMode.system,
          theme: CustomAppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashScreen,
          routes: AppRoutes.routes,
        );
      }
    );
  }
}
