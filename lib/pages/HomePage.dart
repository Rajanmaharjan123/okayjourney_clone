import 'package:flutter/material.dart';
import 'file:///D:/AndroidStudioProjects/New%20Projects/okayjourney_clone/lib/pages/account.dart';
import 'package:okayjourney_clone/feature.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Expanded(flex: 2,
          child: Container(child: Row(
            children: [
              InkWell(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Account()));},
                child: CircleAvatar(radius: 17,
                  backgroundColor: Colors.white70,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.deepPurple,
                    backgroundImage: AssetImage(''),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Okayjourney',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    alignment: Alignment.topLeft,
                    icon: Icon(Icons.notifications),
                    onPressed: (){},
                  ),
                ],
              )
            ],
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context,i){
              },
            )
          ],
        ),
      )
    );
  }
}
