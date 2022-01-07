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
    int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          padding: const EdgeInsets.only(top: 15,),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 11,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,color: Colors.black, size: 30,)),
                  const SizedBox(width: 11,),
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 5),
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(width: 1, color: Colors.white),
                          ),
                          hintText: 'Search',
                          prefixIcon: const Icon(Icons.search_sharp),
                        ),
                      ),
                  ),
                  const SizedBox(width: 22,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                        child: Image.asset('assets/images/messenger.png', width: 30, height: 30,),
                    ),
                  ),
                //  const SizedBox(width: 10,),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: const [
                    SizedBox(width: 8,),
                    Text('Stories', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),),
                    Spacer(),
                    Text('See Archives', style: TextStyle(color: Colors.black,fontSize: 18),),
                    SizedBox(width: 4,),
                    Icon(Icons.arrow_forward_ios,color: Colors.black, size: 18,),

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
                    const SizedBox(height: 15,),
                    Container(
                      child: Column(
                        children: posts.map((p) => FacePostWidget(p)).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: const Alignment(1,0.85),
        child: FloatingActionButton(
          backgroundColor: Colors.indigo,
          onPressed: (){},
          child: const Icon(Icons.add,size: 35,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (newIndex){
          setState(() {
            this.index = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined, size: 30,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline_rounded, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_rounded, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.image, size: 30), label: ''),
        ],
      ),

    );
  }
}
