import 'package:chatter/constants/styles.dart';
import 'package:chatter/widgets/widget.dart';
import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  final String userName;
  final String userEmail;
  SearchTile({this.userName, this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                userName,
                style: mediumTextStyle(),
              ),
              Text(
                userEmail,
                style: mediumTextStyle(),
              ),
              Spacer(),
              LoginButton(
                context: context,
                buttonText: "Message",
                textColor: Colors.white,
                backgroundColor: Colors.pink,
              )
            ],
          )
        ],
      ),
    );
  }
}
