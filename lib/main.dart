import 'package:facebook_screen_app01/widgets/post_widget.dart';
import 'package:facebook_screen_app01/widgets/user_widget.dart';
import 'package:flutter/material.dart';


import 'data/dummy_data.dart';

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
  // List<String> images = [
  //   'https://goodmorning1.com/wp-content/uploads/2018/04/4821.jpg',
  //   'https://storyy.cc/wp-content/uploads/2019/08/13097.jpg',
  //   'https://5jl.cc/wp-content/uploads/2019/09/3653.jpg',
  //   'https://5jl.cc/wp-content/uploads/2019/09/3653-1.jpg',
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inastagram', style: TextStyle(color: Colors.black,fontSize: 18,),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:users.map((e) => UserWidget(e)).toList()
                ),
              ),
              Container(
                child: Column(
                  children: posts.map((e) => PostWidget(e)).toList(),
                ),
              ),

            ],
          ),
        ),
      ),







      // body:  SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: images.map((imagesUrl) {
      //       return Center(
      //         child: Container(
      //           margin: const EdgeInsets.all(8.0),
      //           child: Image.network(imagesUrl,loadingBuilder: (ctx, child, loadingProgress){
      //             if(loadingProgress == null) return child;
      //             return const Center(child: CircularProgressIndicator());
      //           },),
      //         ),
      //       );
      //     }).toList(),
      //   ),
      // ),
    );
  }
}
