import 'package:drian_s_application3/presentation/login_page_screen/login_page_screen.dart';
import 'package:drian_s_application3/presentation/slpas_screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:drian_s_application3/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'Tugas2',
      debugShowCheckedModeBanner: false,
      initialRoute:
          AppRoutes.splashScreen, // Change the initialRoute to SplashScreen
      routes: {
        AppRoutes.loginPageScreen: (context) => LoginPageScreen(),
        AppRoutes.splashScreen: (context) =>
            SplashScreen(), // Add the SplashScreen route here
        // Add other routes if you have any
      },
    );
  }
}
