import 'package:best_medical_calculator/shared/MenuList.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      appBar: AppBar(title: Text(MyGlobals.medicalHelperTool)),

      //=========  Drawer  =============
      //drawer: MainDrawer(),
      //================================

      //=========  BottomNavigation  ===
      //bottomNavigationBar: MyBottomNavigation(),
      //================================

      //=========  BODY  =============
      body: SafeArea(
          //child: Container( decoration: BoxDecoration( image: DecorationImage( image: AssetImage("assets/bg_main.jpeg"), fit: BoxFit.cover)),),
          child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/EasyMed_EN_v1.jpg"),
                    //fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Stack(
                  //   children: <Widget>[
                  //     Image.asset('images/bg.png'), // Background Image !
                  //     Center(child: Image.asset('images/medical_calculation_EN.png')),
                  //   ]
                  // ),
                  SizedBox(
                    height: 100, //child: Text(MyGlobals.medicalHelperToolDesc),
                  ),
                  SizedBox(height: 10),
                  Flexible(
                    child: MenuList(),
                  )
                  //Sandbox(),
                ],
              ))),
    );
  }
}
