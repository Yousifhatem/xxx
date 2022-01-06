import 'package:facebook_screen_app01/models/face_model/face_post_model.dart';
import 'package:flutter/material.dart';


class FacePostWidget extends StatefulWidget{
  PostFaceModel postFaceModel;
  FacePostWidget(this.postFaceModel);

  @override
  State<FacePostWidget> createState() => _FacePostWidgetState();
}

class _FacePostWidgetState extends State<FacePostWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(widget.postFaceModel.postCreator.imageUrl),
                  ),
                  const SizedBox(width: 10,),
                  Text('${widget.postFaceModel.postCreator.name} updated this cover photo',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  const Spacer(),
                  const Icon(Icons.more_horiz),
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    widget.postFaceModel.postCreator.creatingTime,
                    style: const TextStyle(color: Colors.grey),
                  )
              ),
              const SizedBox(height: 15,),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                  child: Image.network(widget.postFaceModel.imageUrl, fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Icon(Icons.favorite_border, color: Colors.blue,),
                  const Icon(Icons.favorite, color: Colors.red,),
                  const SizedBox(width: 10,),
                  Text('${widget.postFaceModel.nOfLike}', style: const TextStyle(fontSize: 18,color: Colors.black),),
                  const Spacer(),
                  Text(' ${widget.postFaceModel.nOfComment} comments', style: const TextStyle(fontSize: 14,color: Colors.grey),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      widget.postFaceModel.likeButton();
                    });
                  }, icon: const Icon(Icons.favorite)),
                  const Text('Like', style: TextStyle(color: Colors.black),),
                  IconButton(onPressed: (){
                    setState(() {
                      widget.postFaceModel.commentButton();
                    });
                  }, icon: const Icon(Icons.comment)
                  ),
                  const Text('Comment', style: TextStyle(color: Colors.black),),
                ],
              ),
            ],
          ),
        ),
        // Align(
        //   alignment: Alignment.bottomRight,
        //   child: FloatingActionButton(
        //     backgroundColor: Colors.indigo,
        //     onPressed: (){},
        //     child: const Icon(Icons.add,size: 35,),
        //   ),
        // ),
      ],
    );
  }
}