import 'package:flutter/material.dart';
import 'package:lolaz_clone/ui/widgets/bottom-nav.dart';
import 'package:lolaz_clone/utils/ui/common.dart';
import 'package:lolaz_clone/utils/ui/helpers.dart';
import 'package:lolaz_clone/utils/ui/widgets.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      navigateToScreen(context, screen: TheBottomNav());
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Spacer(),
            CommonWidgets.masker(Icon(
              Icons.location_on,
              size: 80,
            )),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                  text: 'Lolaz ',
                  style: TextStyle(
                      fontFamily: 'Spartan',
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Colors.white),
                  children: [
                    TextSpan(
                      text: "the tinder clone",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ]),
            ),
            Spacer(),
            CircularProgressIndicator(
              strokeWidth: 0.9,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [UiCommons.accentColor, UiCommons.primaryColor])),
      ),
    );
  }
}
