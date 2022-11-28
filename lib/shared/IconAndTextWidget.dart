import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final String text ;
  final IconData ikonData ;
  IconAndTextWidget({ this.text,this.ikonData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,      
      children: [
        Icon(ikonData,size: 30,color: Colors.black54),
        //SizedBox(height: 0),
        Text(this.text,style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold),)
      ],);
  }
}

class IconAndTextWidgetBig extends StatelessWidget {
  final String text ;
  final IconData ikonData ;
  IconAndTextWidgetBig({ this.text,this.ikonData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,      
      children: [
        Icon(ikonData,size: 45,color: Colors.black54),
        //SizedBox(height: 0),
        Text(this.text,style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold),)
      ],);
  }
}