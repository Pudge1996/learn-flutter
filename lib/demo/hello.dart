import 'package:flutter/material.dart';


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