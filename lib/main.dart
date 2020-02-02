import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
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
           fontSize: 26, 
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
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('data'),
          elevation: 0,
          leading: new Icon(Icons.home),
        ),
        body: ListView.builder(
         itemCount: post.length, 
         itemBuilder: _listItemBuilder,
        ),
      );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // width: 200.0,
      // height: 40.0,
      child: Text(
       '即一个单一样式的文本 Text Widget 就是显示单一样式的文本字符串',
       textDirection: TextDirection.rtl,
       textAlign: TextAlign.left,
       maxLines: 2,
      //  overflow: TextOverflow.ellipsis,
       style: TextStyle(
         fontSize: 26,
        //  fontStyle: FontStyle.italic,
         fontWeight: FontWeight.bold,
         color: Colors.black,
         letterSpacing: 0,
         wordSpacing: 0,
         height: 1.5,
        //  background: Paint() ..color = Colors.blue,
         shadows: [Shadow(color:Colors.black12,offset: Offset(0, 2), blurRadius: 10)],
        //  decoration: TextDecoration.underline,
       ),
     ),
    );
  }
}