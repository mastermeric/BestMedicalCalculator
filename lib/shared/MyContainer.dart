import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {

  final Color renk;
  final Widget child ;
  final Function gestureFonksiyonu ;

  MyContainer({this.renk = Colors.white, this.child, this.gestureFonksiyonu}); // Default renk : white

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureFonksiyonu ,
      child: Container(                
        child: this.child,
        width: 150,
        height: 100,
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: this.renk
        ),
      ),
    );
  }
}



class MyContainerSmall extends StatelessWidget {

  final Color renk;
  final Widget child ;
  final Function gestureFonksiyonu ;

  MyContainerSmall({this.renk = Colors.white, this.child, this.gestureFonksiyonu}); // Default renk : white
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureFonksiyonu,
      child: Container(
        child: this.child,
        width: 150,
        height: 80,
        //margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: this.renk
        ),
      ),
    );
  }
}

class MyContainerBig extends StatelessWidget {

  final Color renk;
  final Widget child ;
  final Function gestureFonksiyonu ;

  MyContainerBig({this.renk = Colors.white, this.child, this.gestureFonksiyonu}); // Default renk : white

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureFonksiyonu ,
      child: Container(
        child: this.child,
        width: 150,
        height: 140,
        //margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: this.renk
        ),
      ),
    );
  }
}