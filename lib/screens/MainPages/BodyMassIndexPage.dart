import 'package:best_medical_calculator/screens/ResultPages/ResultPageForBMI.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:best_medical_calculator/models/UserData.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import '../../shared/IconAndTextWidget.dart';
import '../../shared/MyContainer.dart';

class BodyMassIndexPage extends StatefulWidget {
  @override
  _BodyMassIndexPageState createState() => _BodyMassIndexPageState();
}

class _BodyMassIndexPageState extends State<BodyMassIndexPage> {
  String
      selectedSex; //Stful widget larda rebuild icin public degisken kullanmak yeter.
  int selectedKilogram = 70;
  int selectedHeigth = 170;
  var res;
  String ortalamaOmur = "";
  String erkekOrtalamaOmur = "";
  String kadinOrtalamaOmur = "";
  String hedefUlke = "";
  double selectedAge = 2;

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
            MyGlobals.bodyMassIndexTitle,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(hedefUlke + ", " + MyGlobals.averageLifeTime + " : " + ortalamaOmur),
              //     Text(hedefUlke + ", " + MyGlobals.averageLifeTime + " : " + ortalamaOmur),
              //   ],
              // ),
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
                      max: 90,
                      divisions: 89,
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
                        builder: (context) => ResultPageForBMI(UserDataForBMI(
                            heigth: selectedHeigth,
                            weight: selectedKilogram,
                            sex: selectedSex,
                            age: selectedAge.toInt()))));
              },
            )
          ],
        ));
  }
}
