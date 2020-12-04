import 'package:flutter/material.dart';
import 'package:chatter/widgets/widget.dart';
import 'package:chatter/constants/styles.dart';
import 'package:chatter/constants/validators.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn(this.toggle);

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
                isPassword: false,
                validator: emailValidator,
                context: context,
                hintText: "Email",
                inputController: _emailController,
              ),
              SizedBox(
                height: 12,
              ),
              TextFieldMain(
                isPassword: true,
                validator: passwordValidator,
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
                  GestureDetector(
                    onTap: () {
                      widget.toggle();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Text(
                        "Register now",
                        style: mediumTextStyle(),
                      ),
                    ),
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
