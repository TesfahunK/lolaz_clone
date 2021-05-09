import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lolaz_clone/ui/screens/splash-screen.dart';
import 'package:lolaz_clone/utils/ui/common.dart';
import 'package:lolaz_clone/utils/ui/helpers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lolaz Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Spartan',
        accentColor: UiCommons.accentColor,
        primarySwatch: primarySwatch(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
