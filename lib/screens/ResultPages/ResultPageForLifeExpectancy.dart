//ResultPageForLifeExpectancy(this._userDataForLifeExpectancy);
// MAN BFP = (1.20 x BMI) + (0.23 x Age) - 16.2
// WOMAN BFP = (1.20 x BMI) + (0.23 x Age) - 5.4

import 'package:flutter/material.dart';
import 'package:best_medical_calculator/models/UserData.dart';
import 'package:best_medical_calculator/shared/Hesaplamalar.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ResultPageForLifeExpectancy extends StatelessWidget {
  final UserDataForLifeExpectancy _userDataForLifeExpectancy;

  ResultPageForLifeExpectancy(
      this._userDataForLifeExpectancy); // Sayfamiz UserData verisini kabul ediyor
  var _lifeExpectancySonucu;
  var bfpSonucCumlesi = "";
  var assetImagePath = "";
  Text _errPhrase;

  @override
  Widget build(BuildContext context) {
    if (_userDataForLifeExpectancy.selectedSex == MyGlobals.woman) {
      assetImagePath = 'images/body_shape_woman.jpg';
    } else {
      assetImagePath = 'images/body_shape_man.jpg';
    }

    _lifeExpectancySonucu = HesaplamaLifeExpectancy(_userDataForLifeExpectancy)
        .calculateLifeExpactancy();

    //if (_lifeExpectancySonucu.toString().contains("ERROR")) {
    if (_userDataForLifeExpectancy.isResultOK == false ) {
      _errPhrase = Text(  _userDataForLifeExpectancy.resultPhrase //MyGlobals.parametersOutOfRange 
      + "\n" + MyGlobals.ageStr + " : " + _userDataForLifeExpectancy.age.toString() 
      + "\n" + MyGlobals.heightStr + " : " + _userDataForLifeExpectancy.selectedHeigth.toString() + " cm"
      + "\n" + MyGlobals.weightStr + " : " + _userDataForLifeExpectancy.selectedKilogram.toString() + " kg"
      + "\n"
      ,style: TextStyle(color: Colors.red , fontSize: 18));
    } else {
      _errPhrase = Text("");
    }

    return Scaffold(
        appBar: AppBar(title: Text(MyGlobals.resultPageForLifeExpectancy)),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 50, 5, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(assetImagePath),
                                  fit: BoxFit.fitHeight,
                                ),
                                //shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(MyGlobals.lifeExpectancyPhrase,
                                      style: TextStyle(fontSize: 20)),
                                  Text(_lifeExpectancySonucu.toString(),
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue[700])),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  _errPhrase,
                                  Text(MyGlobals.expectedLifeDuration +"\"" +_userDataForLifeExpectancy.selectedCountry.toUpperCase() +"\" :",style: TextStyle(fontSize: 20)),
                                  SizedBox(height: 15),
                                  Text("- " +MyGlobals.man +" : " +_userDataForLifeExpectancy.averageLifeForMan.toString(),style: TextStyle(fontSize: 17)),SizedBox(height: 5),
                                  Text("- " +MyGlobals.woman +" : " +_userDataForLifeExpectancy.averageLifeForWoman.toString(),style: TextStyle(fontSize: 17)),
                                  SizedBox(height: 5),
                                  Text("- " +MyGlobals.bothGender +" : " +_userDataForLifeExpectancy.averageLife.toString(),style: TextStyle(fontSize: 17)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(MyGlobals.turnBack),
                    onPressed: () {
                      Navigator.pop(context); // Cagri yapilan sayfaya don..
                    },
                  )),
            ],
          ),
        ));
  }
}
