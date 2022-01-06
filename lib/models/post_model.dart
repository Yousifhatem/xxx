
import 'package:facebook_screen_app01/models/user_model.dart';

class PostModel{

  UserModel postCreator;
  String imageUrl;
  int nOfLike;
  int nOfComment;
  Function likeButton;
  Function commentButton;
  Function shareButton;
  Function saveButton;

  PostModel(this.postCreator, this.imageUrl, this.nOfLike, this.nOfComment, this.likeButton, this.commentButton, this.shareButton, this.saveButton);

}

