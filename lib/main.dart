import 'package:flutter/material.dart';
import 'package:review/constant.dart';
import 'package:review/screen/review_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
  primaryColor: kPrimaryColor,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue, // يمكنك تغيير `primarySwatch` حسب الحاجة
    accentColor: kAccentColor,
  ).copyWith(secondary: kAccentColor), // استخدام `secondary` لتحديد اللون الثانوي
  fontFamily: 'Jaapokki',
),
      debugShowCheckedModeBanner: false,
      title: 'Reviews',
      home: Scaffold(
        appBar: AppBar(
          title:const  Center(child: Text("Reviews")),
        ),
        body:const  Reviews(),
      ),
    );
  }
}

