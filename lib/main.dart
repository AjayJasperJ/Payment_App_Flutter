import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:neo_pay/SplashScreens/splash_view1.dart';
import 'package:neo_pay/global/colors.dart';

late Size displaysize;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    displaysize = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: app_theme_bg,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView1(),
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setWindowSize(const Size(414, 896));
  await DesktopWindow.setMinWindowSize(const Size(390, 844));
  await DesktopWindow.setMaxWindowSize(const Size(390, 844));
  runApp(const MyApp());
}
