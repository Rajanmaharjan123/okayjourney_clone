import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child:Column(
            children: [
              Container(
                height: 200,
                color: Colors.deepPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                        backgroundColor: Colors.red,
                    backgroundImage: AssetImage('images/offer.png'),),
                    Padding(padding: EdgeInsets.fromLTRB(0,10 , 0, 10)),
                    Row(
                      children: [
                        Column(children: [Text('* total journey',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),), Text('Okay journey',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                          ],
                        ),
                        Column(
                          children: [Text('* total journey',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),), Text('Okay journey',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
