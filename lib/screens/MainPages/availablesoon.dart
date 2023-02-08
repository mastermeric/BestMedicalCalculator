import 'package:best_medical_calculator/screens/ResultPages/ResultPageForBirthDate.dart';
import 'package:best_medical_calculator/shared/MyContainer.dart';
import 'package:flutter/material.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart'; //for date locale

class AvailableSoonPage extends StatefulWidget {
  @override
  _AvailableSoonPageState createState() => _AvailableSoonPageState();
}

class _AvailableSoonPageState extends State<AvailableSoonPage> {
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
            MyGlobals.availableSoon,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,          
          children: <Widget>[
            SizedBox(height: 20),
            Center(
              child: Container(                
              ),
            ),
            Expanded(
              child: MyContainer(                
                gestureFonksiyonu: () => {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(MyGlobals.availableSoonDesc, style: TextStyle(fontSize: 35)),
                    Icon(Icons.error, color:Colors.red,semanticLabel: "SEO - için Anahtar Semantik Kelimeler !",size: 45,),
                  ],
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
