import 'package:best_medical_calculator/screens/MainPages/HomePage.dart';
import 'package:best_medical_calculator/screens/MainPages/LifeExpectancyPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) =>
          HomePage(), // base root..   home: yerine gecer..  diger sayfalarda  "<--"  isareti buna gore cikar
      '/Home': (context) => HomePage(),
      '/InputPage': (context) => LifeExpectancyPage(),
      // '/AlertDialogPage': (context) => AlertDialogPage(),
      // '/HaberListesiStatik': (context) => HaberListesiStatik(),
      // '/HaberListesiDinamik': (context) => HaberListesiDinamik(),
      //'/LoginPage': (context) => LoginPage(),
    },
    //home: HomePage()
    //home: AlertDialogPage(),
    //home : CycleStaticList(),
    //home : SimpleGrid(),
    //home:NinjaCard(),
    //home:LoginPage(),
  ));
}
