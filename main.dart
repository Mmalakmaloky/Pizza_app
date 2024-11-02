import 'package:flutter/material.dart';
import 'package:pizza_task1/Getting_Started_page.dart';
import 'package:pizza_task1/itemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),routes: {'/ItemPage':(context) => ItemPage()},
      home: Getting_Statrted_page(),
    );
  }

}