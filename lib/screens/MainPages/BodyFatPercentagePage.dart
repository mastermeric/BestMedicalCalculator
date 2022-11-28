// MAN BFP = (1.20 x BMI) + (0.23 x Age) - 16.2
// WOMAN BFP = (1.20 x BMI) + (0.23 x Age) - 5.4

// //WOMEN
// Under 15%: Low Body Fat Risk.
// 15%-18%: Ultra Lean.
// 18%-22%: Lean.
// 22%-30%: Moderately Lean.
// 30%-40%: Excess Fat.
// Above 40%: High Body Fat Risk.

// //MEN
// Under 5%: Low Body Fat Risk.
// 5%-8%: Ultra Lean.
// 8%-12%: Lean.
// 12%-20%: Moderately Lean.
// 20%-30%: Excess Fat.
// Above 30%: High Body Fat Risk.

import 'package:best_medical_calculator/screens/ResultPages/ResultPageForBFP.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:best_medical_calculator/models/UserData.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import '../../shared/IconAndTextWidget.dart';
import '../../shared/MyContainer.dart';

class BodyFatPercentagePage extends StatefulWidget {
  @override
  _BodyFatPercentagePageState createState() => _BodyFatPercentagePageState();
}

class _BodyFatPercentagePageState extends State<BodyFatPercentagePage> {
  String
      selectedSex; //Stful widget larda rebuild icin public degisken kullanmak yeter.
  double selectedAge = 20;
  int selectedKilogram = 70;
  int selectedHeigth = 170;

  var res;
  String ortalamaOmur = "";
  String erkekOrtalamaOmur = "";
  String kadinOrtalamaOmur = "";
  String hedefUlke = "";

  @override
  void initState() {
    super.initState();

    //ITALYA ICIN DEFAULT DEGER :
    ortalamaOmur = (84.01).toString();
    erkekOrtalamaOmur = (81.90).toString();
    kadinOrtalamaOmur = (85.97).toString();
    hedefUlke = "Italy";
    selectedSex = MyGlobals.woman;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            MyGlobals.bodyFatRatioTitle,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 150,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: MyContainerBig(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            MyGlobals.heightStr + " (cm)",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(selectedHeigth.toString(),
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonTheme(
                                minWidth: 30,
                                child: OutlinedButton(
                                    child:
                                        Icon(FontAwesomeIcons.minus, size: 10),
                                    onPressed: () {
                                      setState(() {
                                        if (selectedHeigth > 0) {
                                          selectedHeigth--;
                                        }
                                      });
                                    })),
                            SizedBox(width: 15),
                            ButtonTheme(
                                minWidth: 30,
                                child: OutlinedButton(
                                  child: Icon(FontAwesomeIcons.plus, size: 10),
                                  onPressed: () {
                                    setState(() {
                                      selectedHeigth++;
                                    });
                                  },
                                ))
                          ]),
                    ],
                  ),
                )),
                Expanded(
                    child: MyContainerBig(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            MyGlobals.weightStr + " (kg)",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(selectedKilogram.toString(),
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonTheme(
                                minWidth: 30,
                                child: OutlinedButton(
                                    child:
                                        Icon(FontAwesomeIcons.minus, size: 10),
                                    onPressed: () {
                                      setState(() {
                                        if (selectedKilogram > 0) {
                                          selectedKilogram--;
                                        }
                                      });
                                    })),
                            SizedBox(width: 15),
                            ButtonTheme(
                                minWidth: 30,
                                child: OutlinedButton(
                                  child: Icon(FontAwesomeIcons.plus, size: 10),
                                  onPressed: () {
                                    setState(() {
                                      selectedKilogram++;
                                    });
                                  },
                                ))
                          ]),
                    ],
                  ),
                ))
              ],
            )),
            Expanded(
                child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    MyGlobals.whatIsYourAge,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    selectedAge.toInt().toString(),
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                      min: 2,
                      max: 99,
                      divisions: 98,
                      value: selectedAge,
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value;
                        });
                      })
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: MyContainerBig(
                  child: IconAndTextWidgetBig(
                      text: MyGlobals.woman, ikonData: FontAwesomeIcons.venus),
                  gestureFonksiyonu: () {
                    setState(() {
                      selectedSex = MyGlobals.woman;
                    });
                  },
                  renk: selectedSex == MyGlobals.woman
                      ? Colors.lightBlueAccent[100]
                      : Colors.white,
                )),
                Expanded(
                    child: MyContainerBig(
                  child: IconAndTextWidgetBig(
                      text: MyGlobals.man, ikonData: FontAwesomeIcons.mars),
                  gestureFonksiyonu: () {
                    setState(() {
                      selectedSex = MyGlobals.man;
                    });
                  },
                  renk: selectedSex == MyGlobals.man
                      ? Colors.lightBlueAccent[100]
                      : Colors.white,
                ))
              ],
            )),
            TextButton(
              child: Text(MyGlobals.calculate),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.lightBlue,
                  minimumSize: Size(35, 35),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPageForBFP(UserDataForBFP(
                            sex: selectedSex,
                            weight: selectedKilogram,
                            height: selectedHeigth,
                            age: selectedAge.toInt()))));
              },
            )
          ],
        ));
  }
}
