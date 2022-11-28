import 'package:flutter/material.dart';
import 'package:best_medical_calculator/models/UserData.dart';
import 'package:best_medical_calculator/shared/Hesaplamalar.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:best_medical_calculator/shared/BlurryDialog.dart';

class ResultPageForBMI extends StatelessWidget {
  final UserDataForBMI _userDataForBMI;

  ResultPageForBMI(
      this._userDataForBMI); // Sayfamiz UserData verisini kabul ediyor
  var bmiSonucCumlesi = "";
  var assetImagePath = "";

  _showDialog(BuildContext context, String msg) {
    VoidCallback continueCallBack = () => {
          Navigator.of(context).pop(),
          // code on continue comes here
        };
    BlurryDialog alert = BlurryDialog("Abort", msg, continueCallBack);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    BMIResultData _bmiResultData = new BMIResultData();
    _bmiResultData = HesaplamaBMI(_userDataForBMI).bmiHesapla();

    if (_userDataForBMI.sex == MyGlobals.woman) {
      assetImagePath = 'images/body_shape_woman.jpg';
    } else {
      assetImagePath = 'images/body_shape_man.jpg';
    }

    if (_bmiResultData.resultOK == false) {
      _bmiResultData.bmiResult = 0;
    }

    Widget successfullWidget() {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_bmiResultData.resultPhrase,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("- " + _bmiResultData.resultPhraseSuggestion1,
                style: TextStyle(fontSize: 17)),
            SizedBox(height: 5),
            Text("- " + _bmiResultData.resultPhraseSuggestion2,
                style: TextStyle(fontSize: 17)),
            SizedBox(height: 5),
            Text("- " + _bmiResultData.resultPhraseSuggestion3,
                style: TextStyle(fontSize: 17)),
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
            Text(_bmiResultData.resultPhrase,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            SizedBox(height: 20),
            Text(
                "- " +
                    MyGlobals.heightStr +
                    " : " +
                    _userDataForBMI.heigth.toString(),
                style: TextStyle(fontSize: 17, color: Colors.red)),
            SizedBox(height: 5),
            Text(
                "- " +
                    MyGlobals.weightStr +
                    " : " +
                    _userDataForBMI.weight.toString(),
                style: TextStyle(fontSize: 17, color: Colors.red)),
            SizedBox(height: 5),
            Text(
                "- " +
                    MyGlobals.ageStr +
                    " : " +
                    _userDataForBMI.age.toString(),
                style: TextStyle(fontSize: 17, color: Colors.red)),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(title: Text(MyGlobals.resultPageForBMI)),
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
                                  Text(MyGlobals.calculatedBodyMassIndex,
                                      style: TextStyle(fontSize: 20)),
                                  Text(_bmiResultData.bmiResult.toString(),
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
                                percent: _bmiResultData.bmiResult / 100,
                                center: Text(
                                  _bmiResultData.bmiResult.toString() + "%",
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
                            if (_bmiResultData.resultOK == false) errorWidget(),
                            if (_bmiResultData.resultOK == true)
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
