import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:best_medical_calculator/models/UserData.dart';
import 'package:best_medical_calculator/screens/ResultPages/ResultPageForLifeExpectancy.dart';
import 'package:best_medical_calculator/shared/CountryModel.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'dart:convert' as convert;
import '../../shared/IconAndTextWidget.dart';
import '../../shared/MyContainer.dart';

class LifeExpectancyPage extends StatefulWidget {
  @override
  _LifeExpectancyPageState createState() => _LifeExpectancyPageState();
}

class _LifeExpectancyPageState extends State<LifeExpectancyPage> {
  String selectedSex; //Stful widget larda rebuild icin public degisken kullanmak yeter.
  double smokingPerDay = 0;
  double execisePerWeek = 0;
  int selectedKilogram = 70;
  int selectedHeigth = 170;
  var _yeniHaberler = [];
  var res;
  String ortalamaOmur = "";
  String erkekOrtalamaOmur = "";
  String kadinOrtalamaOmur = "";
  String hedefUlke = "";
  double selectedAge = 2;
  var initialSelectionStr = "";

  Future<List> fetchData() async {
    try {
      var jsonText = await rootBundle.loadString('assets/Country.json');
      var jsonResponse = convert.jsonDecode(jsonText);
      List tagObjs = jsonResponse.map((i) => CountryModel.fromJson(i)).toList();

      return tagObjs;
    } catch (exception) {
      print("ERROR at exception : " + exception.toString());
      return null;
    }
  }

  @override
  void initState() {
    super.initState();

    fetchData().then((value) {
      setState(() {
        _yeniHaberler.addAll(value);
      });
    });

    selectedSex = MyGlobals.woman;

    //MULTI LANG - ITALYA  -------------------------------
    // ortalamaOmur = (84.01).toString();
    // erkekOrtalamaOmur = (81.90).toString();
    // kadinOrtalamaOmur = (85.97).toString();
    // hedefUlke = "Italy";
    // initialSelectionStr = "+39";
    //----------------------------------------------------

    //MULTI LANG - TURKEY  -------------------------------
    // ortalamaOmur = (78.45).toString();
    // erkekOrtalamaOmur = (75.57).toString();
    // kadinOrtalamaOmur = (81.21).toString();
    // hedefUlke = "Turkey";
    // initialSelectionStr = "+90";
    //----------------------------------------------------

    //MULTI LANG - CANADA   ------------------------------
    ortalamaOmur = (82.96).toString();
    erkekOrtalamaOmur = (81.15).toString();
    kadinOrtalamaOmur = (84.74).toString();
    hedefUlke = "Canada";
    initialSelectionStr = "+1";
    //----------------------------------------------------
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            MyGlobals.lifeExpectancyTitle,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CountryListPick(
                    appBar: AppBar(
                      backgroundColor: Colors.amber,
                      title: Text('Pick your country'),                      
                    ),
                    theme: CountryTheme(
                      isShowFlag: true,
                      isShowTitle: true,
                      isShowCode: true,
                      isDownIcon: true,
                      showEnglishName: true,                      
                    ),
                    initialSelection: initialSelectionStr,
                    onChanged: (CountryCode code) {
                      res = haberFiltrele(code);
                      if (res == "") {
                        // TANIMSIZ Ülke ise ortalama Dunya oryalamasi : 72.8
                        setState(() {
                          ortalamaOmur = (72.8).toString();
                          erkekOrtalamaOmur = (72.8).toString();
                          kadinOrtalamaOmur = (72.8).toString();
                          hedefUlke = code.name;
                        });
                      } else {
                        setState(() {
                          ortalamaOmur = res.ortalama.toString();
                          erkekOrtalamaOmur = res.erkek.toString();
                          kadinOrtalamaOmur = res.kadin.toString();
                          hedefUlke = res.ulke.toString();
                          if (hedefUlke.contains("Emirates")) {
                            hedefUlke = "UAE";
                          }
                        });
                        //print(res.ortalama);
                      }
                    },
                  ),
                  //Text(hedefUlke +", " +MyGlobals.averageLifeTime +" : " +ortalamaOmur),
                  Text(MyGlobals.averageLifeTime +" : " +ortalamaOmur),
                ],
              ),
              width: 150,
              height: 50,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: MyContainer(
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
                                fontSize: 15,
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
                                  fontSize: 20,
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
                    child: MyContainer(
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
                                fontSize: 15,
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
                                  fontSize: 20,
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
                    MyGlobals.whatIsYourAgeForLfeExpectancy,
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  Text(
                    selectedAge.toInt().toString(),
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
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
                    child: MyContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        MyGlobals.howManyDaysYouExercise,
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      Text(
                        execisePerWeek.toInt().toString(),
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                          min: 0,
                          max: 7,
                          divisions: 7,
                          value: execisePerWeek,
                          onChanged: (value) {
                            setState(() {
                              execisePerWeek = value;
                            });
                          })
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
                    MyGlobals.howManyCigaretsYouSmoke,
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  Text(
                    smokingPerDay.toInt().toString(),
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                      min: 0,
                      max: 30,
                      divisions: 30,
                      value: smokingPerDay,
                      onChanged: (value) {
                        setState(() {
                          smokingPerDay = value;
                        });
                      })
                ],
              ),
            )),
            Center(
                child: Text("Your Gender ?",
                    style: TextStyle(color: Colors.black54, fontSize: 15))),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: MyContainerSmall(
                  child: IconAndTextWidget(
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
                    child: MyContainerSmall(
                  child: IconAndTextWidget(
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
            ),
            SizedBox(height: 5),
            TextButton(
              child: Text(MyGlobals.calculate),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.lightBlue,
                  minimumSize: Size(25, 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPageForLifeExpectancy(
                            UserDataForLifeExpectancy(
                                age: selectedAge.toInt(),
                                execisePerWeek: execisePerWeek,
                                selectedHeigth: selectedHeigth,
                                selectedKilogram: selectedKilogram,
                                selectedSex: selectedSex,
                                smokingPerDay: smokingPerDay,
                                selectedCountry: hedefUlke,
                                averageLifeForMan:
                                    double.parse(erkekOrtalamaOmur),
                                averageLifeForWoman:
                                    double.parse(kadinOrtalamaOmur),
                                averageLife: double.parse(ortalamaOmur),
                                averageLifeForTargetSex:
                                    (selectedSex == MyGlobals.woman)
                                        ? double.parse(kadinOrtalamaOmur)
                                        : double.parse(erkekOrtalamaOmur)))));
              },
            )
          ],
        ));
  }

  haberFiltrele(CountryCode code) {
    try {
      return _yeniHaberler.firstWhere((element) => element.ulke
          .toString()
          .contains(code.name.replaceAll(" ", "").substring(0, 8)));
    } catch (e) {
      return "";
    }
  }
}
