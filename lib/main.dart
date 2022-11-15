import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Center(child: Text("Transcribe")),
      ),
    );
  }
}
