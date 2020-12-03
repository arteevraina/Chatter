import 'package:flutter/material.dart';
import 'package:chatter/widgets/widget.dart';
import 'package:chatter/constants/styles.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(context),
      body: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300.0,
              height: 200.0,
              child: FittedBox(
                child: Text(
                  "Chatter",
                  style: buttonTextStyle(Colors.black),
                ),
              ),
            ),
            TextFieldMain(
              context: context,
              hintText: "Email",
              inputController: _emailController,
            ),
            SizedBox(
              height: 12,
            ),
            TextFieldMain(
              context: context,
              hintText: "Password",
              inputController: _passwordController,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password ?",
                style: mediumTextStyle(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LoginButton(
              context: context,
              buttonText: "Sign In",
              textColor: Colors.white,
              backgroundColor: Colors.pink,
            ),
            SizedBox(
              height: 20,
            ),
            LoginButton(
              context: context,
              buttonText: "Sign In with Google",
              textColor: Colors.white,
              backgroundColor: Colors.red,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: mediumTextStyle()),
                Text(
                  "Register now",
                  style: mediumTextStyle(),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
