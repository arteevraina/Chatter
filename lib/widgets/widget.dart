import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatter/constants/styles.dart';

Widget AppBarMain(BuildContext context) {
  return AppBar(
    title: Text(
      "Chatter",
      style: GoogleFonts.majorMonoDisplay(),
    ),
  );
}

Widget TextFieldMain(
    {BuildContext context,
    String hintText,
    TextEditingController inputController}) {
  return TextField(
    controller: inputController,
    decoration: InputDecoration(
      hintStyle: mediumTextStyle(),
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    ),
  );
}

Widget LoginButton(
    {BuildContext context,
    String buttonText,
    Color textColor,
    Color backgroundColor}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: backgroundColor, borderRadius: BorderRadius.circular(30)),
    child: Center(
      child: Text(
        buttonText,
        style: buttonTextStyle(textColor),
      ),
    ),
  );
}
