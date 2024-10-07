import 'package:flutter/material.dart';
import 'package:sliderdelete/DataPicker.dart';
import 'package:sliderdelete/Sliderdelete.dart';
import 'package:sliderdelete/Switch.dart';
import 'package:sliderdelete/TimePick.dart';
import 'package:sliderdelete/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SwitchDemo(),
    );
  }
}
      