import 'package:flutter/material.dart';
import './demo/listview-demo.dart';
import './demo/hello.dart';
import './demo/drawerdemo.dart';
import './demo/bottomdemo.dart';


void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class Home extends StatelessWidget { 


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('data'),
          elevation: 0,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('Navigation button is pressed.'),
          // ),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed.'),
            ),          
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white30,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            // indicatorWeight: 4,
            indicatorPadding: EdgeInsets.all(4),
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.archive)),
              Tab(icon: Icon(Icons.phone)),
            ],
          ), 
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.archive, size: 128, color: Colors.black12),
            Icon(Icons.phone, size: 128, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomDemo(),
      ),
    );
  }
}



