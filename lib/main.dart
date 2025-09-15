import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:lab1/welcome_page.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      title: 'Lab 1',

      theme: ThemeData(primarySwatch: Colors.orange, fontFamily: 'Roboto'),

      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
