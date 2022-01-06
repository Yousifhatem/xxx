import 'package:facebook_screen_app01/models/post_model.dart';
import 'package:facebook_screen_app01/models/user_model.dart';
import 'package:flutter/material.dart';



  List<UserModel> users = [
    UserModel('Yousef', 'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg'),
    UserModel('Mohammed', 'https://www.pngitem.com/pimgs/m/111-1114839_circle-people-icon-flat-png-avatar-icon-transparent.png'),
    UserModel('Mahmoud', 'https://w7.pngwing.com/pngs/922/214/png-transparent-computer-icons-avatar-businessperson-interior-design-services-corporae-building-company-heroes-thumbnail.png'),
    UserModel('Tareq', 'https://www.pngitem.com/pimgs/m/111-1114839_circle-people-icon-flat-png-avatar-icon-transparent.png'),
    UserModel('Ahmed', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY3qp4vyt8ko3KsV7B5nMDnOpVMjufZQxBMw&usqp=CAU'),
  ];

  List<PostModel> posts = [
    PostModel(
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
        (){
          debugPrint('Share active');

        },
        (){
          debugPrint('Save active');

        }
    ),
    PostModel(
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
        (){
          debugPrint('Share active');

        },
        (){
          debugPrint('Save active');

        }
    ),
    PostModel(
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
            (){
          debugPrint('Share active');

        },
            (){
          debugPrint('Save active');

        }
    ),
    PostModel(
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
            (){
          debugPrint('Share active');

        },
            (){
          debugPrint('Save active');

        }
    ),
    PostModel(
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
            (){
          debugPrint('Share active');

        },
            (){
          debugPrint('Save active');

        }
    ),

  ];
