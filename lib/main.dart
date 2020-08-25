import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'file:///D:/AndroidStudioProjects/New%20Projects/okayjourney_clone/lib/pages/HomePage.dart';
import 'file:///D:/AndroidStudioProjects/New%20Projects/okayjourney_clone/lib/pages/chat.dart';
import 'file:///D:/AndroidStudioProjects/New%20Projects/okayjourney_clone/lib/pages/history.dart';
import 'file:///D:/AndroidStudioProjects/New%20Projects/okayjourney_clone/lib/pages/map.dart';
import 'file:///D:/AndroidStudioProjects/New%20Projects/okayjourney_clone/lib/pages/wifi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.deepPurple,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;
  final HomePage _homePage = HomePage();
  final Maps _maps = Maps();
  final History _history = History();
  final Chat _chat = Chat();
  final Wifi _wifi = Wifi();

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page){
    switch (page){
      case 2:
        return _homePage;
        break;
      case 3:
        return _history;
        break;
      case 0:
        return _maps;
        break;
      case 1:
        return _wifi;
        break;
      case 4:
        return _chat;
        break;
      default:
        return new Container(
          child:new Text('no page found',style: TextStyle(fontSize: 30),),
        );
    }
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.white70,
        bottomNavigationBar:CurvedNavigationBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.1) ,
          height: 50,
          items: <Widget>[
            Icon(Icons.location_on, size: 25,color: Colors.deepPurple,),
            Icon(Icons.video_library, size: 25,color: Colors.deepPurple,),
            Icon(Icons.home, size: 25,color: Colors.deepPurple,),
            Icon(Icons.history, size: 25,color: Colors.deepPurple,),
            Icon(Icons.message, size: 25,color: Colors.deepPurple,),
          ],
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.easeInOut,

          index: 2,
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
            //Handle button tap
          },
        ),
        body: _showPage
    );
  }
}


