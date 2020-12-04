import 'package:chatter/services/auth.dart';
import 'package:chatter/services/authenticate.dart';
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

Widget AppBarChatRoom(BuildContext context) {
  return AppBar(
    title: Text(
      "Chatter",
      style: GoogleFonts.majorMonoDisplay(),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          AuthMethods().signOut();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Authenticate(),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(
            Icons.logout,
          ),
        ),
      ),
    ],
  );
}

Widget TextFieldMain(
    {BuildContext context,
    String hintText,
    TextEditingController inputController,
    Function validator,
    bool isPassword}) {
  return TextFormField(
    obscureText: isPassword,
    validator: validator,
    controller: inputController,
    decoration: InputDecoration(
      hintStyle: mediumTextStyle(),
      hintText: hintText,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.pink,
          width: 2,
        ),
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
