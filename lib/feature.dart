import 'package:flutter/material.dart';
class Feature extends StatefulWidget {
  @override
  _FeatureState createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: GridView.count(crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Container(
              child: Image.asset('images/offer.png',fit: BoxFit.cover,),
            ),
          ),
        ),
      ],
      ),

    );
  }
}
