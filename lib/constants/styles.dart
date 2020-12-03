import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle mediumTextStyle() {
  return GoogleFonts.yeonSung(
    textStyle: TextStyle(
      color: Colors.pink,
    ),
  );
}

TextStyle buttonTextStyle(Color textColor) {
  return GoogleFonts.majorMonoDisplay(
    textStyle: TextStyle(
      color: textColor,
    ),
  );
}
