import 'package:flutter/material.dart';

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
  bool isDarkMode = false;

  // String text = 'Yousef',
int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: !isDarkMode ? Colors.white : Colors.black,
        title: Text(
          'Change Mode',
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        ),
        elevation: 1,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Text(
              'Light Mode',
              style: TextStyle(color: isDarkMode? Colors.white : Colors.black),
            ),
            SwitchListTile(
                title: Text(
                  'Change Mode',
                  style: TextStyle(
                      color: !isDarkMode ? Colors.white : Colors.black),
                ),
                value: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                }),

            const SizedBox(height: 200,),
            Center(
                child: Text(activeIndex == 0? 'Home Page' : 'Favorite', style: TextStyle(color: !isDarkMode? Colors.white : Colors.black,),),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: !isDarkMode? Colors.white : Colors.black,
        currentIndex: activeIndex,
        items:   [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: isDarkMode? Colors.white : Colors.black,), label: 'Home Page'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: isDarkMode? Colors.white : Colors.black,), label: 'Favorite Page'),
        ],
        onTap: (value){
          setState(() {
            this.activeIndex = value;
          });
        },
      ),
    );
  }
}
