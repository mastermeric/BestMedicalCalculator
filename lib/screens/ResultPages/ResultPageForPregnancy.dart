import 'package:best_medical_calculator/models/UserData.dart';
import 'package:flutter/material.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart'; //for date locale

class ResultPageForPregnancy extends StatefulWidget {
  final DateTime _userDateTime;
  final int mensturalCycle;

  ResultPageForPregnancy(this._userDateTime, this.mensturalCycle);
  @override
  _ResultPageForPregnancyState createState() => _ResultPageForPregnancyState();
}

class _ResultPageForPregnancyState extends State<ResultPageForPregnancy> {
  var bmiSonucCumlesi = "";
  var assetImagePath = "";
  String dogumTarihi = "";
  String reglDate1 = "";
  String reglDate2 = "";
  String reglDate3 = "";
  String pregancyDate1 = "";
  String pregancyDate2 = "";
  String pregancyDate3 = "";
  DateFormat? dateFormat;
  DateFormat? timeFormat;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    //MericY: MULTILANG AYARLAMA YAP !
    dateFormat = new DateFormat.yMMMMd('en_EN'); //it_IT , tr_TR, en_EN
    //timeFormat = new DateFormat.Hms('tr_TR');
  }

  @override
  Widget build(BuildContext context) {
    PregnancyResultData _pregnancyResultData = new PregnancyResultData();
    DateTime sonAdetGunu = widget._userDateTime;

    //REGL GUNLERINI BUL..
    pregancyDate1 = dateFormat!.format(new DateTime(
            sonAdetGunu.year, sonAdetGunu.month, sonAdetGunu.day + 14)) +
        " - " +
        dateFormat!.format(new DateTime(
            sonAdetGunu.year, sonAdetGunu.month, sonAdetGunu.day + 14 + 3));
    pregancyDate2 = dateFormat!.format(new DateTime(sonAdetGunu.year,
            sonAdetGunu.month, sonAdetGunu.day + 14 + widget.mensturalCycle)) +
        " - " +
        dateFormat!.format(new DateTime(sonAdetGunu.year, sonAdetGunu.month,
            sonAdetGunu.day + 14 + widget.mensturalCycle + 3));
    pregancyDate3 = dateFormat!.format(new DateTime(
            sonAdetGunu.year,
            sonAdetGunu.month,
            sonAdetGunu.day + 14 + widget.mensturalCycle * 2)) +
        " - " +
        dateFormat!.format(new DateTime(sonAdetGunu.year, sonAdetGunu.month,
            sonAdetGunu.day + 14 + widget.mensturalCycle * 2 + 3));

    reglDate1 = dateFormat!.format(new DateTime(sonAdetGunu.year,
        sonAdetGunu.month, sonAdetGunu.day + widget.mensturalCycle));
    reglDate2 = dateFormat!.format(new DateTime(sonAdetGunu.year,
        sonAdetGunu.month, sonAdetGunu.day + widget.mensturalCycle * 2));
    reglDate3 = dateFormat!.format(new DateTime(sonAdetGunu.year,
        sonAdetGunu.month, sonAdetGunu.day + widget.mensturalCycle * 3));

    //DOGUM GUNUNU BUL.
    sonAdetGunu = new DateTime(sonAdetGunu.year, sonAdetGunu.month,
        sonAdetGunu.day + 7); // 7 Gun ekle..
    sonAdetGunu = new DateTime(sonAdetGunu.year, sonAdetGunu.month - 3,
        sonAdetGunu.day); // 3 Ay çıkart..
    sonAdetGunu = new DateTime(sonAdetGunu.year + 1, sonAdetGunu.month,
        sonAdetGunu.day); // 1 sene ekle..
    dogumTarihi = dateFormat!.format(sonAdetGunu);

    assetImagePath = 'images/pregnancy_icon.jpg';

    return Scaffold(
        appBar: AppBar(title: Text(MyGlobals.resultPageForPregnancy)),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 50, 5, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
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
                                  Text(MyGlobals.pregnancyLastMensturationDate,
                                      style: TextStyle(fontSize: 20)),
                                  Text(dateFormat!.format(widget._userDateTime),
                                      style: TextStyle(
                                          fontSize: 30,
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
                      flex: 6,
                      child: Container(
                        //color: Colors.redAccent,
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(MyGlobals.pregnancyCalendar,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 20),
                                  Text(
                                      MyGlobals.pregnancyFirstReglDate +
                                          " : " +
                                          reglDate1,
                                      style: TextStyle(fontSize: 17)),
                                  SizedBox(height: 5),
                                  Text(
                                      MyGlobals.pregnancySecondReglDate +
                                          " : " +
                                          reglDate2,
                                      style: TextStyle(fontSize: 17)),
                                  SizedBox(height: 5),
                                  Text(
                                      MyGlobals.pregnancyThirdReglDate +
                                          " : " +
                                          reglDate3,
                                      style: TextStyle(fontSize: 17)),
                                  SizedBox(height: 35),
                                  //-----------------
                                  Text(MyGlobals.pregnancyPossiblityCalendar,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 20),
                                  Text(
                                      MyGlobals.pregnancyFirstPossiblityDate +
                                          " : " +
                                          pregancyDate1,
                                      style: TextStyle(fontSize: 17)),
                                  SizedBox(height: 5),
                                  Text(
                                      MyGlobals.pregnancySecondPossiblityDate +
                                          " : " +
                                          pregancyDate2,
                                      style: TextStyle(fontSize: 17)),
                                  SizedBox(height: 5),
                                  Text(
                                      MyGlobals.pregnancyThirdPossiblityDate +
                                          " : " +
                                          pregancyDate3,
                                      style: TextStyle(fontSize: 17)),
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
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(MyGlobals.turnBack),
                onPressed: () {
                  Navigator.pop(context); // Cagri yapilan sayfaya don..
                },
              ),
            ],
          ),
        ));
  }
}
