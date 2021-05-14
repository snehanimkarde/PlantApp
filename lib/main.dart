import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: KbackgroundColor,
        primaryColor: Kprimarycolor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: KtextColor),
        primarySwatch: Colors.blue,
      ),
      home: Homescreen(),
    );
  }
}
