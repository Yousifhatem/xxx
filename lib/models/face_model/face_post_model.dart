
import 'face_user_model.dart';

class PostFaceModel{
  FaceUserModel postCreator;
  String imageUrl;
  int nOfLike;
  int nOfComment;
  Function likeButton;
  Function commentButton;

  PostFaceModel(this.postCreator, this.imageUrl, this.nOfLike, this.nOfComment, this.likeButton, this.commentButton);
}