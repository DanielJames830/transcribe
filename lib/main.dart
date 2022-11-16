import 'package:flutter/material.dart';
import 'package:transcribe/presentation/pages/home_page.dart';
import 'package:transcribe/presentation/style.dart';

void main() {
  runApp(const Transcribe());
}

class Transcribe extends StatelessWidget {
  const Transcribe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transcribe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }

  static Style getStyle() {
    return LightStyle();
  }
}
