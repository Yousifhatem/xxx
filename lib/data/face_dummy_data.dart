import 'package:facebook_screen_app01/models/face_model/face_post_model.dart';
import 'package:facebook_screen_app01/models/face_model/face_user_model.dart';
import 'package:flutter/material.dart';



List<FaceUserModel> users = [
  FaceUserModel('Yousef', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg','3 min ago','https://mamlaka.net/wp-content/uploads/2021/03/%D9%84%D8%A7%D9%84%D8%A7.jpg'),
  FaceUserModel('Mohammed', 'https://www.pngitem.com/pimgs/m/111-1114839_circle-people-icon-flat-png-avatar-icon-transparent.png', '5 min ago','https://i0.wp.com/www.almuheet.net/wp-content/uploads/%D8%A7%D8%B3%D9%85%D8%A7%D8%A1-%D8%B4%D8%AE%D8%B5%D9%8A%D8%A7%D8%AA-%D8%A7%D9%86%D9%85%D9%8A-2-681x700.jpg'),
  FaceUserModel('Mahmoud', 'https://w7.pngwing.com/pngs/922/214/png-transparent-computer-icons-avatar-businessperson-interior-design-services-corporae-building-company-heroes-thumbnail.png', '6 min ago', 'https://www.mah6at.net/wp-content/uploads/2020/04/images-15-300x219.jpeg'),
  FaceUserModel('Tareq', 'https://www.pngitem.com/pimgs/m/111-1114839_circle-people-icon-flat-png-avatar-icon-transparent.png','10 min ago', 'https://rowadbusiness.com/post/wp-content/uploads/%D8%B5%D9%88%D8%B1-%D8%AE%D9%84%D9%81%D9%8A%D8%A7%D8%AA-%D8%A7%D9%86%D9%85%D9%8A-%D9%84%D9%84%D8%AC%D9%88%D8%A7%D9%84-%D9%88%D8%A7%D9%84%D9%83%D9%85%D8%A8%D9%8A%D9%88%D8%AA%D8%B1-%D8%B1%D8%A7%D8%A6-2.jpg'),
  FaceUserModel('Ahmed', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY3qp4vyt8ko3KsV7B5nMDnOpVMjufZQxBMw&usqp=CAU','1 min ago', 'https://www.mah6at.net/wp-content/uploads/2020/04/images-13-300x213.jpeg'),
];

List<PostFaceModel> posts = [
  PostFaceModel(
      users[0],
      'https://www.abedkhattar.com/wp-content/uploads/vb/Jerusalem_Quds_12.jpg',
      20,
      15,
          (){
        debugPrint('Like active');
      },
          (){
        debugPrint('Comment active');

      },
  ),
  PostFaceModel(
      users[1],
      'https://gate.ahram.org.eg/Media/News/2017/12/7/19_2017-636482578877392184-739.jpg',
      30,
      10,
          (){
        debugPrint('Like active');

      },
          (){
        debugPrint('Comment active');

      },
  ),
  PostFaceModel(
      users[2],
      'https://gate.ahram.org.eg/Media/News/2017/12/7/19_2017-636482578877392184-739.jpg',
      50,
      20,
          (){
        debugPrint('Like active');

      },
          (){
        debugPrint('Comment active');

      },
  ),
  PostFaceModel(
      users[3],
      'https://ccute.cc/wp-content/uploads/2018/07/735.jpg',
      18,
      3,
          (){
        debugPrint('Like active');

      },
          (){
        debugPrint('Comment active');

      },
  ),
  PostFaceModel(
      users[4],
      'https://cdn.al-ain.com/lg/images/2020/10/17/85-220511-prophets-pictures-achieve-peace-2.jpeg',
      100,
      50,
          (){
        debugPrint('Like active');

      },
          (){
        debugPrint('Comment active');

      },
  ),

];
