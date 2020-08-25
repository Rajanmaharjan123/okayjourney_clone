import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView(scrollDirection: Axis.horizontal,
        children: [
          Category(image_location: 'images/shirt.jpg',image_caption: 'Shirt',),
          Category(image_location: 'images/jacket.jpg',image_caption: 'Jacket',),
          Category(image_location: 'images/pant.jpg',image_caption: 'pant',),
          Category(image_location: 'images/shoe.jpg',image_caption: 'shoe',),
          Category(image_location: 'images/fridge.png',image_caption: 'electronics',),
          Category(image_location: 'images/washing machine.png',image_caption: 'washing machine',),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String image_location;
  // ignore: non_constant_identifier_names
  final String image_caption;

  // ignore: non_constant_identifier_names
  Category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          print('hello');
        },
        child: CircleAvatar(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              title: CircleAvatar(
                  radius:30,
                  backgroundImage : AssetImage(image_location,)),
              subtitle: Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.topCenter,
                  child: Text(image_caption,style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
      ),
    );
  }
}
