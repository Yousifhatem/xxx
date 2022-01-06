import 'package:facebook_screen_app01/widgets/face_widget/face_post_widget.dart';
import 'package:facebook_screen_app01/widgets/face_widget/face_user_widget.dart';
import 'package:flutter/material.dart';


import 'data/face_dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,color: Colors.black, size: 40,)),
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: 'Search',
                          prefixIcon: const Icon(Icons.search_sharp),
                        ),
                      ),
                  ),
                  const Icon(Icons.messenger,color: Colors.blue, size: 40,),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: const [
                    Text('Stories', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text('Se Arcives', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward_ios,color: Colors.black, size: 15,),
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children:users.map((e) => FaceUserWidget(e)).toList()
                      ),
                    ),
                    Container(
                      child: Column(
                        children: posts.map((p) => FacePostWidget(p)).toList(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: Colors.indigo,
                        onPressed: (){},
                        child: const Icon(Icons.add,size: 35,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
