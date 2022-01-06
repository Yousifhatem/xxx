import 'package:facebook_screen_app01/models/face_model/face_user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaceUserWidget extends StatelessWidget{
  FaceUserModel faceUserModel;
  FaceUserWidget(this.faceUserModel);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: 110,
          height: 160,
          clipBehavior: Clip.antiAlias,
          decoration:  const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Image.network(faceUserModel.imgStory,fit: BoxFit.cover,),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(faceUserModel.imageUrl),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 110,
          height: 160,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              faceUserModel.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16, fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ],
    );
  }

}