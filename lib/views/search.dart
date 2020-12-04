import 'package:chatter/services/usersRepository.dart';
import 'package:chatter/views/searchtile.dart';
import 'package:chatter/widgets/widget.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  UsersRepository _usersRepository = UsersRepository();

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(context),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextFieldMain(
                      hintText: "Search UserName",
                      inputController: _searchController,
                      isPassword: false,
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      _usersRepository.getUser(_searchController.text);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(itemBuilder: (context, index) {
              return SearchTile(
                userName: "",
                userEmail: " ",
              );
            }),
          ],
        ),
      ),
    );
  }
}
