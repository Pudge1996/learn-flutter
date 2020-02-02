import 'package:flutter/material.dart';

class DrawerDemo extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: ListView(
            // padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
            children: <Widget>[
              DrawerHeader(
                child: Text('header'.toUpperCase(),
                style: TextStyle(
                  fontSize: 36.0),
                  ),
              ),
              UserAccountsDrawerHeader(
                accountName: Text('Name'),
                accountEmail: Text('Email@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://img-blog.csdnimg.cn/20181130213923353.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  image: DecorationImage(
                    image: NetworkImage('https://img-blog.csdnimg.cn/20181130214036767.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    )
                  )
                  ),
              ),
              ListTile(
                title: Text('Message', textAlign: TextAlign.left),
                leading: Icon(Icons.phone, size: 20.0),
                onTap: () => Navigator.pop(context),
    
              )
            ],
          ),
        );
  }
}