import 'package:flutter/material.dart';

class BottomDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomDemoState();
  }
}

class _BottomDemoState extends State<BottomDemo> {
  int _currentIndex = 0;
  
  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.black26,
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          items: [
            BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explore'),
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Mail'),
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Mail'),
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Mail'),
          )
          ],
        );
  }
}


