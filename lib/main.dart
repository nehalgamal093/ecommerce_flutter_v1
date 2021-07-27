import 'package:ecommerce_flutter_v1/screens/login.dart';
import 'package:ecommerce_flutter_v1/utilis/constants.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(
        seconds: 3,
        loaderColor: Color(kMainColor),
        image: Image.asset('assets/cart.gif'),
        photoSize: 200,
        navigateAfterSeconds:Login(),
      ),
    );
  }
}

