import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Style {
  Color primaryColor = Colors.white;
  Color secondaryColor = Colors.amber;
  Color emphasisColor = Colors.blue;
  Color backGroundColor = Colors.black;
  Color foreGroundColor = Colors.white10;
  Color fontColor = Colors.grey;

  TextStyle fontStyle = TextStyle();
}

class LightStyle extends Style {
  @override
  Color get primaryColor => Color.fromARGB(255, 247, 247, 242);

  @override
  Color get emphasisColor => Color(0xff1ed760);

  @override
  Color get secondaryColor => Color(0xff171614);

  @override
  Color get backGroundColor => Color(0xff171614);

  @override
  Color get foreGroundColor => Color(0xffBBB4B6);

  @override
  TextStyle get fontStyle => GoogleFonts.pacifico(
        fontStyle: FontStyle.italic,
        color: secondaryColor,
        fontSize: 48,
      );
}
