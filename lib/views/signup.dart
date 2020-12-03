import 'package:flutter/material.dart';
import 'package:chatter/widgets/widget.dart';
import 'package:chatter/constants/styles.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
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
                hintText: "Username",
                inputController: _userNameController,
              ),
              SizedBox(
                height: 12,
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
                buttonText: "Sign Up",
                textColor: Colors.white,
                backgroundColor: Colors.pink,
              ),
              SizedBox(
                height: 20,
              ),
              LoginButton(
                context: context,
                buttonText: "Sign Up with Google",
                textColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ", style: mediumTextStyle()),
                  Text(
                    "SignUp now",
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
      ),
    );
  }
}
