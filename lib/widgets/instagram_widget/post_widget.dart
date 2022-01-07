import 'package:facebook_screen_app01/models/post_model.dart';
import 'package:flutter/material.dart';


class PostWidget extends StatefulWidget{
  PostModel postModel;
  PostWidget(this.postModel);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(widget.postModel.postCreator.imageUrl),
              ),
              const SizedBox(width: 10,),
              Text(widget.postModel.postCreator.name,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              const Spacer(),
              const Icon(Icons.more_horiz)
            ],
          ),
          const SizedBox(height: 7,),
          Container(
            color: Colors.red,
            height: 300,
            width: double.infinity,
            child: Image.network(widget.postModel.imageUrl, fit: BoxFit.cover,),
          ),
          Row(
            children: [
              IconButton(onPressed: (){
                setState(() {
                  widget.postModel.likeButton();
                });
              }, icon: const Icon(Icons.favorite)),
              IconButton(onPressed: (){
                setState(() {
                  widget.postModel.commentButton();
                });
              }, icon: const Icon(Icons.comment)),
              IconButton(onPressed: (){
                setState(() {
                  widget.postModel.shareButton();
                });
              }, icon: const Icon(Icons.share)),
              const Spacer(),
              IconButton(onPressed: (){
                setState(() {
                  widget.postModel.saveButton();
                });
              }, icon: const Icon(Icons.save)),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${widget.postModel.nOfLike} likes', style: const TextStyle(fontSize: 18,color: Colors.black),),
                const SizedBox(height: 10,),
                Text('View all ${widget.postModel.nOfComment} comments', style: const TextStyle(fontSize: 14,color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}