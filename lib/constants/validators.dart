Function(String) userNameValidator = (String userName) {
  if (userName.isEmpty) {
    return "Username is Empty";
  }

  if (userName.length < 3) {
    return "Username cannot be less than 3 characters";
  }

  return null;
};

Function(String) passwordValidator = (String password) {
  if (password.isEmpty) {
    return "Password is Empty";
  }

  if (password.length < 5) {
    return "Password cannot be less than 5 characters";
  }

  return null;
};

Function(String) emailValidator = (String email) {
  String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(p);

  if (!regExp.hasMatch(email)) {
    return "Email is not valid";
  }

  return null;
};
