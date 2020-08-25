import 'package:flutter/material.dart';

class Wifi extends StatefulWidget {
  @override
  _WifiState createState() => _WifiState();
}

class _WifiState extends State<Wifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wifi'),
      ),
      body: Center(
        child: Container(
          child: Text('wifi page'),
        ),
      ),
    );
  }
}
