import 'package:facebook_screen_app01/models/user_model.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget{
  UserModel userModel;
  UserWidget(this.userModel);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(userModel.imageUrl),
          ),
          Text(userModel.name,style: const TextStyle(fontSize: 18),),
        ],
      ),

    );
  }

}