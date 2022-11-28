// MAN BFP = (1.20 x BMI) + (0.23 x Age) - 16.2
// WOMAN BFP = (1.20 x BMI) + (0.23 x Age) - 5.4

import 'package:flutter/material.dart';
import 'package:best_medical_calculator/models/UserData.dart';
import 'package:best_medical_calculator/shared/Hesaplamalar.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ResultPageForBFP extends StatelessWidget {
  final UserDataForBFP _userDataForBFP;

  ResultPageForBFP(
      this._userDataForBFP); // Sayfamiz UserData verisini kabul ediyor
  var bfpSonuc;
  var assetImagePath = "images/body_shape_woman.jpg";

  @override
  Widget build(BuildContext context) {
    //bfpSonuc = HesaplamaBFP(_userDataForBFP).bfpHesapla();

    BFPResultData _bfpResultData = new BFPResultData();
    _bfpResultData = HesaplamaBFP(_userDataForBFP).bfpHesapla();

    if (_userDataForBFP.sex == MyGlobals.woman) {
      assetImagePath = 'images/body_shape_woman.jpg';
    } else {
      assetImagePath = 'images/body_shape_man.jpg';
    }

    if (_bfpResultData.resultOK == false) {
      _bfpResultData.bfpResult = 0;
    }
    Widget successfullWidget() {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_bfpResultData.resultPhrase,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            //Text("- " +MyGlobals.calculatedBodyMassIndex +" : " +_bfpResultData.resultBMI,style: TextStyle(fontSize: 17)),
            Text("- " +MyGlobals.calculatedBodyFatPercentage +" : " +_bfpResultData.bfpResult.toString(),style: TextStyle(fontSize: 17)),            SizedBox(height: 20),
            Text("- " + _bfpResultData.resultPhraseSuggestion1,style: TextStyle(fontSize: 17)),SizedBox(height: 5),
            Text("- " + _bfpResultData.resultPhraseSuggestion2,style: TextStyle(fontSize: 17)),
            SizedBox(height: 5),
            Text("- " + _bfpResultData.resultPhraseSuggestion3,style: TextStyle(fontSize: 17)),
          ],
        ),
      );
    }

    Widget errorWidget() {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_bfpResultData.resultPhrase,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            SizedBox(height: 20),
            Text(
                "- " +
                    MyGlobals.heightStr +
                    " : " +
                    _userDataForBFP.height.toString(),
                style: TextStyle(fontSize: 17, color: Colors.red)),
            SizedBox(height: 5),
            Text(
                "- " +
                    MyGlobals.weightStr +
                    " : " +
                    _userDataForBFP.weight.toString(),
                style: TextStyle(fontSize: 17, color: Colors.red)),
            SizedBox(height: 5),
            Text(
                "- " +
                    MyGlobals.ageStr +
                    " : " +
                    _userDataForBFP.age.toString(),
                style: TextStyle(fontSize: 17, color: Colors.red)),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(title: Text(MyGlobals.resultPageForBFP)),
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
                                  Text(MyGlobals.calculatedBodyFatPercentage,
                                      style: TextStyle(fontSize: 20)),
                                  Text(_bfpResultData.bfpResult.toString(),
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
                        //color: Colors.redAccent,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: LinearPercentIndicator(
                                //leaner progress bar
                                animation: true,
                                animationDuration: 750,
                                width: 390,
                                lineHeight: 35,
                                percent: _bfpResultData.bfpResult / 100,
                                center: Text(
                                  _bfpResultData.bfpResult.toString() + "%",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.blue[400],
                                backgroundColor: Colors.grey[300],
                              ),
                            ),
                            SizedBox(height: 40),
                            if (_bfpResultData.resultOK == false) errorWidget(),
                            if (_bfpResultData.resultOK == true)
                              successfullWidget(),
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
