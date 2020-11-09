import 'package:calling/components/dial_user_pic.dart';
import 'package:calling/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            "Anna Williams",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white),
          ),
          Text(
            "Calling...",
            style: TextStyle(color: Colors.white60),
          ),
          VerticalSpacing(),
          DialUserPic(
            image: "assets/images/calling_face.png",
          )
        ],
      ),
    );
  }
}
