import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
        Image.network(post[index].imageUrl),
        SizedBox(height: 8),
        Text(
          post[index].title,
          style: TextStyle(
           fontSize: 30, 
           fontWeight: FontWeight.bold,
          ),
          ),
        Text(
          post[index].author,
          style: TextStyle(
           fontSize: 18, 
          ),
          ),
        SizedBox(height: 8),
        ],
      ),
    );
  } 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
         itemCount: post.length, 
         itemBuilder: _listItemBuilder,
        );
  }
}