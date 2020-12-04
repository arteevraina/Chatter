import 'package:cloud_firestore/cloud_firestore.dart';

class UsersRepository {
  CollectionReference users = FirebaseFirestore.instance.collection("users");

  Future getUser(String userName) async {
    try {
      var result = await users.where("userName", isEqualTo: userName).get();
      print(result.toString());
    } catch (e) {
      print(e.toString());
    }
  }

  Future postUser({String email, String userName}) async {
    try {
      var result = users.add(
        {
          "email": email,
          "userName": userName,
        },
      );

      print(result.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}
