import 'package:best_medical_calculator/models/UserData.dart';
import 'package:best_medical_calculator/shared/MyGlobals.dart';

class ClassCocukBoyKiloHesapla {
  UserDataForCocukBoyKilo _userDataForCocukBoyKilo;
  ClassCocukBoyKiloHesapla(this._userDataForCocukBoyKilo);

  ResultDataForCocukBoyKilo calculateBoyKilo() {
    ResultDataForCocukBoyKilo _resultDataForCocukBoyKilo =
        new ResultDataForCocukBoyKilo();

    _resultDataForCocukBoyKilo.age = _userDataForCocukBoyKilo.age;
    _resultDataForCocukBoyKilo.sex = _userDataForCocukBoyKilo.sex;

    //GIRLS :
    if (_userDataForCocukBoyKilo.sex == MyGlobals.woman) {
      if (_userDataForCocukBoyKilo.age == 1) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 7;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 12;
        _resultDataForCocukBoyKilo.expectedMinHeight = 64;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 77;
      }
      if (_userDataForCocukBoyKilo.age == 2) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 9;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 15;
        _resultDataForCocukBoyKilo.expectedMinHeight = 76;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 91;
      }
      if (_userDataForCocukBoyKilo.age == 3) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 10;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 17;
        _resultDataForCocukBoyKilo.expectedMinHeight = 85;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 100;
      }
      if (_userDataForCocukBoyKilo.age == 4) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 11;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 20;
        _resultDataForCocukBoyKilo.expectedMinHeight = 92;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 108;
      }
      if (_userDataForCocukBoyKilo.age == 5) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 12;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 23;
        _resultDataForCocukBoyKilo.expectedMinHeight = 97;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 114;
      }
      if (_userDataForCocukBoyKilo.age == 6) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 13;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 26;
        _resultDataForCocukBoyKilo.expectedMinHeight = 103;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 121;
      }
      if (_userDataForCocukBoyKilo.age == 7) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 15;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 30;
        _resultDataForCocukBoyKilo.expectedMinHeight = 108;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 127;
      }
      if (_userDataForCocukBoyKilo.age == 8) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 17;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 34;
        _resultDataForCocukBoyKilo.expectedMinHeight = 115;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 133;
      }
      if (_userDataForCocukBoyKilo.age == 9) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 20;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 39;
        _resultDataForCocukBoyKilo.expectedMinHeight = 120;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 138;
      }
      if (_userDataForCocukBoyKilo.age == 10) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 22;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 45;
        _resultDataForCocukBoyKilo.expectedMinHeight = 125;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 144;
      }
      if (_userDataForCocukBoyKilo.age == 11) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 26;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 53;
        _resultDataForCocukBoyKilo.expectedMinHeight = 133;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 152;
      }
      if (_userDataForCocukBoyKilo.age == 12) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 30;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 59;
        _resultDataForCocukBoyKilo.expectedMinHeight = 140;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 160;
      }
      if (_userDataForCocukBoyKilo.age == 13) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 34;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 63;
        _resultDataForCocukBoyKilo.expectedMinHeight = 144;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 164;
      }
      if (_userDataForCocukBoyKilo.age == 14) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 38;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 66;
        _resultDataForCocukBoyKilo.expectedMinHeight = 147;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 167;
      }
      if (_userDataForCocukBoyKilo.age == 15) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 40;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 68;
        _resultDataForCocukBoyKilo.expectedMinHeight = 148;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 169;
      }
      if (_userDataForCocukBoyKilo.age == 16) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 41;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 70;
        _resultDataForCocukBoyKilo.expectedMinHeight = 148;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 171;
      }
      if (_userDataForCocukBoyKilo.age == 17) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 43;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 71;
        _resultDataForCocukBoyKilo.expectedMinHeight = 148;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 171;
      }
      if (_userDataForCocukBoyKilo.age == 18) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 44;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 75;
        _resultDataForCocukBoyKilo.expectedMinHeight = 148;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 175;
      }
    } else // BOYS :
    {
      if (_userDataForCocukBoyKilo.age == 1) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 7;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 12;
        _resultDataForCocukBoyKilo.expectedMinHeight = 68;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 80;
      }
      if (_userDataForCocukBoyKilo.age == 2) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 9;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 15;
        _resultDataForCocukBoyKilo.expectedMinHeight = 79;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 93;
      }
      if (_userDataForCocukBoyKilo.age == 3) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 11;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 18;
        _resultDataForCocukBoyKilo.expectedMinHeight = 86;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 105;
      }
      if (_userDataForCocukBoyKilo.age == 4) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 12;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 21;
        _resultDataForCocukBoyKilo.expectedMinHeight = 92;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 114;
      }
      if (_userDataForCocukBoyKilo.age == 5) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 13;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 24;
        _resultDataForCocukBoyKilo.expectedMinHeight = 98;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 121;
      }
      if (_userDataForCocukBoyKilo.age == 6) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 14;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 26;
        _resultDataForCocukBoyKilo.expectedMinHeight = 104;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 127;
      }
      if (_userDataForCocukBoyKilo.age == 7) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 16;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 30;
        _resultDataForCocukBoyKilo.expectedMinHeight = 109;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 133;
      }
      if (_userDataForCocukBoyKilo.age == 8) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 18;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 33;
        _resultDataForCocukBoyKilo.expectedMinHeight = 115;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 139;
      }
      if (_userDataForCocukBoyKilo.age == 9) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 20;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 38;
        _resultDataForCocukBoyKilo.expectedMinHeight = 120;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 145;
      }
      if (_userDataForCocukBoyKilo.age == 10) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 22;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 45;
        _resultDataForCocukBoyKilo.expectedMinHeight = 125;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 151;
      }
      if (_userDataForCocukBoyKilo.age == 11) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 24;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 52;
        _resultDataForCocukBoyKilo.expectedMinHeight = 130;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 158;
      }
      if (_userDataForCocukBoyKilo.age == 12) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 26;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 60;
        _resultDataForCocukBoyKilo.expectedMinHeight = 135;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 165;
      }
      if (_userDataForCocukBoyKilo.age == 13) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 30;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 67;
        _resultDataForCocukBoyKilo.expectedMinHeight = 140;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 171;
      }
      if (_userDataForCocukBoyKilo.age == 14) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 34;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 72;
        _resultDataForCocukBoyKilo.expectedMinHeight = 146;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 178;
      }
      if (_userDataForCocukBoyKilo.age == 15) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 39;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 76;
        _resultDataForCocukBoyKilo.expectedMinHeight = 152;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 182;
      }
      if (_userDataForCocukBoyKilo.age == 16) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 44;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 80;
        _resultDataForCocukBoyKilo.expectedMinHeight = 158;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 185;
      }
      if (_userDataForCocukBoyKilo.age == 17) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 48;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 82;
        _resultDataForCocukBoyKilo.expectedMinHeight = 162;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 185;
      }
      if (_userDataForCocukBoyKilo.age == 18) {
        _resultDataForCocukBoyKilo.expectedMinWeight = 50;
        _resultDataForCocukBoyKilo.expectedMaxWeight = 83;
        _resultDataForCocukBoyKilo.expectedMinHeight = 162;
        _resultDataForCocukBoyKilo.expectedMaxHeight = 185;
      }
    }

    if (_userDataForCocukBoyKilo.age! < 14) {
      if (_userDataForCocukBoyKilo.weight! >
          _resultDataForCocukBoyKilo.expectedMaxWeight!) {
        _resultDataForCocukBoyKilo.resultPhrase =
            MyGlobals.cocukBoyKiloOverWeight + "\n" + MyGlobals.cocukBoyKiloExpectedWeightRange + 
            _resultDataForCocukBoyKilo.expectedMinWeight.toString() + " - " + _resultDataForCocukBoyKilo.expectedMaxWeight.toString() +" kg.";
        _resultDataForCocukBoyKilo.heightWeightRangeOK = false;
      } else if (_userDataForCocukBoyKilo.weight! <
          _resultDataForCocukBoyKilo.expectedMinWeight!) {
        _resultDataForCocukBoyKilo.resultPhrase =
            MyGlobals.cocukBoyKiloUnderWeight;
        _resultDataForCocukBoyKilo.heightWeightRangeOK = false;
      } else {
        _resultDataForCocukBoyKilo.heightWeightRangeOK = true;
      }
    } else {
      _resultDataForCocukBoyKilo.heightWeightRangeOK = true;
    }

    return _resultDataForCocukBoyKilo;
  }
}

class HesaplamaLifeExpectancy {
  UserDataForLifeExpectancy _userDataLifeExpectancy;
  HesaplamaLifeExpectancy(this._userDataLifeExpectancy);

  String calculateLifeExpactancy() {
    //life expectancy: 4·2 years shorter in obese (BMI ≥30·0 kg/m2) men and 3·5 years shorter in obese women,
    //life expectancy: 4·3 years shorter in underweight (BMI <18·5 kg/m2) men and 4·5 years shorter in underweight women.
    double yasamSuresi;

    UserDataForBMI _userDataForBMI = new UserDataForBMI();
    _userDataForBMI.heigth = _userDataLifeExpectancy.selectedHeigth;
    _userDataForBMI.weight = _userDataLifeExpectancy.selectedKilogram;
    _userDataForBMI.sex = _userDataLifeExpectancy.selectedSex;
    _userDataForBMI.age = _userDataLifeExpectancy.age;

    // HesaplamaBMI hesap = new HesaplamaBMI(_userDataForBMI);
    double bmi = 0;
    //hesap.bmiHesapla().bmiResult;

    BMIResultData _bMIResultData = new BMIResultData();
    _bMIResultData = HesaplamaBMI(_userDataForBMI).bmiHesapla();
    bmi = _bMIResultData.bmiResult!;

    //BFPResultData _bfpResultData = new BFPResultData();

    if (_bMIResultData.resultOK == false) {
      _userDataLifeExpectancy.isResultOK = false;
      _userDataLifeExpectancy.resultPhrase = _bMIResultData.resultPhrase;
      // bmi = 0;
      // return "ERROR";
    } else {
      _userDataLifeExpectancy.isResultOK = true;
    }

    yasamSuresi = _userDataLifeExpectancy.averageLifeForTargetSex! +
        _userDataLifeExpectancy.execisePerWeek!.toInt() -
        _userDataLifeExpectancy.smokingPerDay! / 2;

    yasamSuresi = yasamSuresi +
        (_userDataLifeExpectancy.selectedHeigth! ~/
                _userDataLifeExpectancy.selectedKilogram!)
            .toInt();

    if (bmi < 18.5) {
      if (_userDataLifeExpectancy.selectedSex == MyGlobals.woman) {
        yasamSuresi = yasamSuresi - 4.5;
      } else {
        yasamSuresi = yasamSuresi - 4.3;
      }
    }

    if (bmi > 30) {
      if (_userDataLifeExpectancy.selectedSex == MyGlobals.woman) {
        yasamSuresi = yasamSuresi - 3.5;
      } else {
        yasamSuresi = yasamSuresi - 4.2;
      }
    }

    if (_userDataLifeExpectancy.selectedSex == MyGlobals.woman) {
      yasamSuresi = yasamSuresi + 3;
    }

    return yasamSuresi.toStringAsFixed(1);
  }
}

class HesaplamaBMI {
  UserDataForBMI _userDataForBMI;
  HesaplamaBMI(this._userDataForBMI);

  BMIResultData bmiHesapla() {
    //Below 18.5 : Underweight ,  18.5 to 24.9: Normal , 25.0 to 29.9	 : Overwieght ,  30 or higher : Obese
    var bmiStr = (this._userDataForBMI.weight! /
            ((this._userDataForBMI.heigth! / 100) *
                (this._userDataForBMI.heigth! / 100)))
        .toStringAsFixed(2);
    var bmiSonuc = double.parse(bmiStr);
    var bmiSonucCumlesi = "";
    bool boyKiloOrani = false;

    BMIResultData _bmiResultData = new BMIResultData();

    UserDataForCocukBoyKilo _userDataForCocukBoyKilo =
        new UserDataForCocukBoyKilo();
    _userDataForCocukBoyKilo.age = _userDataForBMI.age;
    _userDataForCocukBoyKilo.sex = _userDataForBMI.sex;
    _userDataForCocukBoyKilo.weight = _userDataForBMI.weight;
    _userDataForCocukBoyKilo.height = _userDataForBMI.heigth;

    ClassCocukBoyKiloHesapla boyKiloHesaplama =
        new ClassCocukBoyKiloHesapla(_userDataForCocukBoyKilo);
    ResultDataForCocukBoyKilo boyKiloRes = boyKiloHesaplama.calculateBoyKilo();
    boyKiloOrani = boyKiloRes.heightWeightRangeOK!;

    _bmiResultData.bmiResult = bmiSonuc;

    // ANORMAL BOY KILO VERISI !!
    if (boyKiloOrani == false) {
      _bmiResultData.resultPhrase = boyKiloRes.resultPhrase;
      _bmiResultData.resultOK = false;      
      return _bmiResultData;
    }

    // TEENAGERs
    if (_userDataForBMI.age! >= 0 && _userDataForBMI.age! <= 20) {
      if (bmiSonuc <= 5) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseTeenAgeUnderweight;
      }
      if (bmiSonuc > 5 && bmiSonuc <= 85) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseTeenAgeHealthyWeight;
      }
      if (bmiSonuc > 85 && bmiSonuc <= 95) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseTeenAgeAtRiskOfOverweight;
      }
      if (bmiSonuc > 95) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseTeenAgeOverWeight;
      }
    }
    //ADULTs
    else {
      if (bmiSonuc <= 16) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseSevereThinness;
      }
      if (bmiSonuc > 16 && bmiSonuc <= 17) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseModerateThinness;
      }
      if (bmiSonuc > 17 && bmiSonuc <= 18.5) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseMildThinness;
      }
      if (bmiSonuc > 18.5 && bmiSonuc <= 25) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseNormal;
      }
      if (bmiSonuc > 25 && bmiSonuc <= 30) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseOverweight;
      }
      if (bmiSonuc > 30 && bmiSonuc <= 35) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseObeseClass1;
      }
      if (bmiSonuc > 35 && bmiSonuc <= 40) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseObeseClass2;
      }
      if (bmiSonuc > 40) {
        bmiSonucCumlesi = MyGlobals.bmiResultPhraseObeseClass3;
      }
    }

    //ADULTS SUGGESTIONS
    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseSevereThinness) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_SevereThinness;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_SevereThinness;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_SevereThinness;
    }

    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseModerateThinness) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_ModerateThinness;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion1_ModerateThinness;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion1_ModerateThinness;
    }

    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseMildThinness) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_MildThinness;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_MildThinness;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_MildThinness;
    }

    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseNormal) {
      _bmiResultData.resultPhraseSuggestion1 = MyGlobals.bmiSuggestion1_Normal;
      _bmiResultData.resultPhraseSuggestion2 = MyGlobals.bmiSuggestion2_Normal;
      _bmiResultData.resultPhraseSuggestion3 = MyGlobals.bmiSuggestion3_Normal;
    }

    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseOverweight) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_Overweight;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_Overweight;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_Overweight;
    }

    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseObeseClass1) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_ObeseClass1;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_ObeseClass1;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_ObeseClass1;
    }

    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseObeseClass2) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_ObeseClass2;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_ObeseClass2;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_ObeseClass2;
    }

    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseObeseClass3) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_ObeseClass3;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_ObeseClass3;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_ObeseClass3;
    }

    //TEENAGER SUGGESTIONS
    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseTeenAgeUnderweight) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_TeenAgeUnderweight;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_TeenAgeUnderweight;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_TeenAgeUnderweight;
    }
    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseTeenAgeHealthyWeight) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_TeenAgeHealthyWeight;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_TeenAgeHealthyWeight;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_TeenAgeHealthyWeight;
    }
    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseTeenAgeAtRiskOfOverweight) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_TeenAgeAtRiskOfOverweight;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_TeenAgeAtRiskOfOverweight;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_TeenAgeAtRiskOfOverweight;
    }
    if (bmiSonucCumlesi == MyGlobals.bmiResultPhraseTeenAgeOverWeight) {
      _bmiResultData.resultPhraseSuggestion1 =
          MyGlobals.bmiSuggestion1_TeenAgeOverWeight;
      _bmiResultData.resultPhraseSuggestion2 =
          MyGlobals.bmiSuggestion2_TeenAgeOverWeight;
      _bmiResultData.resultPhraseSuggestion3 =
          MyGlobals.bmiSuggestion3_TeenAgeOverWeight;
    }

    
    _bmiResultData.resultPhrase = bmiSonucCumlesi;
    _bmiResultData.resultOK = true;

    return _bmiResultData;
  }
}

class HesaplamaBFP {
  UserDataForBFP _userDataForBFP;
  HesaplamaBFP(this._userDataForBFP);

  double bfpSonuc = 0;
  double _bmiSonuc = 0;
  var bfpSonucCumlesi = "";

  BFPResultData bfpHesapla() {
    int genderVal = 0;
    UserDataForBMI _userDataForBMI = new UserDataForBMI();
    _userDataForBMI.sex = _userDataForBFP.sex;
    _userDataForBMI.heigth = _userDataForBFP.height;
    _userDataForBMI.weight = _userDataForBFP.weight;
    _userDataForBMI.age = _userDataForBFP.age;

    BMIResultData _bMIResultData = new BMIResultData();
    _bMIResultData = HesaplamaBMI(_userDataForBMI).bmiHesapla();
    _bmiSonuc = _bMIResultData.bmiResult!;

    BFPResultData _bfpResultData = new BFPResultData();

    if (_bMIResultData.resultOK == false) {
      _bfpResultData.resultOK = false;
      _bfpResultData.resultPhrase = _bMIResultData.resultPhrase;
      return _bfpResultData;
    }

    //Set Gender Coefficient val..
    _userDataForBFP.sex == MyGlobals.woman ? genderVal = 0 : genderVal = 1;

    //CHILD
    if (_userDataForBFP.age! > 0 && _userDataForBFP.age! < 20) {
      if (_userDataForBFP.sex == MyGlobals.woman) {
        bfpSonuc =
            ((1.51) * (_bmiSonuc)) - ((0.70) * (_userDataForBFP.age!)) + 1.4;
      } else {
        bfpSonuc =
            ((1.51) * (_bmiSonuc)) - ((0.70) * (_userDataForBFP.age!)) - 2.2;
      }
    } else {
      //ADULTS
      if (_userDataForBFP.sex == MyGlobals.woman) {
        bfpSonuc =
            ((1.20) * (_bmiSonuc)) + ((0.23) * (_userDataForBFP.age!)) - 5.4;
      } else {
        bfpSonuc =
            //((1.20) * (_bmiSonuc)) + ((0.23) * (_userDataForBFP.age)) - 16.2;
            ((1.10) * (_bmiSonuc)) + ((0.23) * (_userDataForBFP.age!)) - 16.2;
      }
    }

    bfpSonuc = double.parse(bfpSonuc.toStringAsFixed(2));

    if (_userDataForBFP.sex == MyGlobals.woman) {
      if (bfpSonuc <= 15) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseLowFat;
      }
      if (bfpSonuc > 15 && bfpSonuc <= 18) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseAthletesFat;
      }
      if (bfpSonuc > 18 && bfpSonuc <= 30) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseIdealFat;
      }
      if (bfpSonuc > 30 && bfpSonuc <= 40) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseAcceptableFat;
      }
      if (bfpSonuc > 40) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseObeseLevelFat;
      }
    } else {
      //  FOR MEN
      if (bfpSonuc <= 5) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseLowFat;
      }
      if (bfpSonuc > 5 && bfpSonuc <= 13) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseAthletesFat;
      }
      if (bfpSonuc > 13 && bfpSonuc <= 20) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseIdealFat;
      }
      if (bfpSonuc > 20 && bfpSonuc <= 32) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseAcceptableFat;
      }
      if (bfpSonuc > 32) {
        bfpSonucCumlesi = MyGlobals.bfpResultPhraseObeseLevelFat;
      }
    }

    if (bfpSonucCumlesi == MyGlobals.bfpResultPhraseLowFat) {
      _bfpResultData.resultPhraseSuggestion1 = MyGlobals.bfpSuggestion1_LowFat;
      _bfpResultData.resultPhraseSuggestion2 = MyGlobals.bfpSuggestion2_LowFat;
      _bfpResultData.resultPhraseSuggestion3 = MyGlobals.bfpSuggestion3_LowFat;
    }

    if (bfpSonucCumlesi == MyGlobals.bfpResultPhraseAthletesFat) {
      _bfpResultData.resultPhraseSuggestion1 =
          MyGlobals.bfpSuggestion1_Athletes;
      _bfpResultData.resultPhraseSuggestion2 =
          MyGlobals.bfpSuggestion2_Athletes;
      _bfpResultData.resultPhraseSuggestion3 =
          MyGlobals.bfpSuggestion3_Athletes;
    }

    if (bfpSonucCumlesi == MyGlobals.bfpResultPhraseIdealFat) {
      _bfpResultData.resultPhraseSuggestion1 = MyGlobals.bfpSuggestion1_Ideal;
      _bfpResultData.resultPhraseSuggestion2 = MyGlobals.bfpSuggestion2_Ideal;
      _bfpResultData.resultPhraseSuggestion3 = MyGlobals.bfpSuggestion3_Ideal;
    }

    if (bfpSonucCumlesi == MyGlobals.bfpResultPhraseAcceptableFat) {
      _bfpResultData.resultPhraseSuggestion1 =
          MyGlobals.bfpSuggestion1_Acceptable;
      _bfpResultData.resultPhraseSuggestion2 =
          MyGlobals.bfpSuggestion2_Acceptable;
      _bfpResultData.resultPhraseSuggestion3 =
          MyGlobals.bfpSuggestion3_Acceptable;
    }
    if (bfpSonucCumlesi == MyGlobals.bfpResultPhraseObeseLevelFat) {
      _bfpResultData.resultPhraseSuggestion1 =
          MyGlobals.bfpSuggestion1_ObeseLevelFat;
      _bfpResultData.resultPhraseSuggestion2 =
          MyGlobals.bfpSuggestion2_ObeseLevelFat;
      _bfpResultData.resultPhraseSuggestion3 =
          MyGlobals.bfpSuggestion3_ObeseLevelFat;
    }

    _bfpResultData.bfpResult = bfpSonuc;
    _bfpResultData.resultPhrase = bfpSonucCumlesi;
    _bfpResultData.resultBMI = _bmiSonuc.toString();
    _bfpResultData.resultOK = true;

    return _bfpResultData;
  }
}
