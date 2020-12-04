import 'package:chatter/services/auth.dart';
import 'package:chatter/services/usersRepository.dart';
import 'package:chatter/views/chatroomscreen.dart';
import 'package:flutter/material.dart';
import 'package:chatter/widgets/widget.dart';
import 'package:chatter/constants/styles.dart';
import 'package:chatter/constants/validators.dart';

class SignUp extends StatefulWidget {
  final Function toggle;
  SignUp(this.toggle);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;
  AuthMethods authMethods = AuthMethods();
  UsersRepository _usersRepository = UsersRepository();

  final formKey = GlobalKey<FormState>();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  signUp() async {
    if (formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      String email = _emailController.text;
      String password = _passwordController.text;
      String userName = _userNameController.text;
      await authMethods.signUpWithEmailAndPassword(email, password);

      _usersRepository.postUser(email: email, userName: userName);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatRoom()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(context),
      body: isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 50,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFieldMain(
                            validator: userNameValidator,
                            context: context,
                            hintText: "Username",
                            inputController: _userNameController,
                            isPassword: false,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextFieldMain(
                            validator: emailValidator,
                            context: context,
                            hintText: "Email",
                            inputController: _emailController,
                            isPassword: false,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextFieldMain(
                            validator: passwordValidator,
                            context: context,
                            hintText: "Password",
                            inputController: _passwordController,
                            isPassword: true,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(top: 15),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password ?",
                          style: mediumTextStyle(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        signUp();
                      },
                      child: LoginButton(
                        context: context,
                        buttonText: "Sign Up",
                        textColor: Colors.white,
                        backgroundColor: Colors.pink,
                      ),
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
                        Text("Already have an account? ",
                            style: mediumTextStyle()),
                        GestureDetector(
                          onTap: () {
                            widget.toggle();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "SignUp now",
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
