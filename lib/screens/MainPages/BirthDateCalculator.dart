import 'package:best_medical_calculator/screens/ResultPages/ResultPageForBirthDate.dart';
import 'package:best_medical_calculator/shared/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart'; //for date locale

class BirthDateCalculator extends StatefulWidget {
  @override
  _BirthDateCalculatorState createState() => _BirthDateCalculatorState();
}

class _BirthDateCalculatorState extends State<BirthDateCalculator> {
  String? selectedSex; //Stful widget larda rebuild icin public degisken kullanmak yeter.
  int selectedKilogram = 70;
  int selectedHeigth = 170;
  var res;
  String ortalamaOmur = "";
  String erkekOrtalamaOmur = "";
  String kadinOrtalamaOmur = "";
  String hedefUlke = "";
  double selectedAge = 2;
  DateFormat? dateFormat;

  var pickedDate = DateTime.now();
  var pickedTime = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    //MericY: MULTILANG AYARLAMA YAP !
    dateFormat = new DateFormat.yMMMMd('en_EN'); //it_IT , tr_TR, en_EN
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            MyGlobals.birthDateCalculation,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
                padding: EdgeInsets.all(15),
                child: Text(MyGlobals.pregnancyLastMensturationDate,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))),
            Expanded(
              child: MyContainer(
                gestureFonksiyonu: () => {},
                child: ListTile(
                  title: Text(dateFormat!.format(pickedDate),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: () {
                    pickDateFunc();
                  },
                ),
              ),
            ),
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
                        builder: (context) =>
                            ResultPageForBirthDate(pickedDate)));
              },
            )
          ],
        ));
  }

  pickDateFunc() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 50),
      lastDate: DateTime(DateTime.now().year + 50),
    );

    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }

  pickTimeFunc() async {
    TimeOfDay? date = await showTimePicker(
      context: context,
      initialTime: pickedTime,
    );

    if (date != null) {
      setState(() {
        pickedTime = date;
      });
    }
  }
}
