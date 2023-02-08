class UserDataForLifeExpectancy {
  String? selectedSex; //
  double? smokingPerDay;
  double? execisePerWeek;
  int? selectedKilogram;
  int? selectedHeigth;
  String? pageType;
  double? averageLifeForTargetSex;
  double? averageLife;
  int? age;
  double? averageLifeForMan;
  double? averageLifeForWoman;
  String? selectedCountry;
  bool? isResultOK;
  String? resultPhrase;

  UserDataForLifeExpectancy(
      {this.selectedSex,
      this.smokingPerDay,
      this.execisePerWeek,
      this.selectedKilogram,
      this.selectedHeigth,
      this.pageType,
      this.averageLifeForTargetSex,
      this.averageLife,
      this.age,
      this.averageLifeForMan,
      this.averageLifeForWoman,
      this.selectedCountry,
      this.isResultOK,
      this.resultPhrase});
}

class UserDataForBMI {
  String? sex; //
  int? weight;
  int? heigth;
  int? age;

  UserDataForBMI({this.sex, this.weight, this.heigth, this.age});
}

class BMIResultData {
  double? bmiResult = 0;
  String? resultPhrase;
  String? resultPhraseSuggestion1;
  String? resultPhraseSuggestion2;
  String? resultPhraseSuggestion3;
  bool? resultOK;

  BMIResultData(
      {this.bmiResult,
      this.resultPhrase,
      this.resultPhraseSuggestion1,
      this.resultPhraseSuggestion2,
      this.resultPhraseSuggestion3,
      this.resultOK});
}

class UserDataForBFP {
  String? sex; //
  int? weight;
  int? height;
  int? age;

  UserDataForBFP({this.sex, this.weight, this.height, this.age});
}

class BFPResultData {
  double? bfpResult;
  String? resultPhrase;
  String? resultPhraseSuggestion1;
  String? resultPhraseSuggestion2;
  String? resultPhraseSuggestion3;
  String? resultBMI;
  bool? resultOK;

  BFPResultData(
      {this.bfpResult,
      this.resultPhrase,
      this.resultPhraseSuggestion1,
      this.resultPhraseSuggestion2,
      this.resultPhraseSuggestion3,
      this.resultBMI,
      this.resultOK});
}

class PregnancyResultData {
  DateTime? userDate;
  String? firstPregnancyDate;
  String? secondPregnancyDate;
  String? thirdPregnancyDate;
  String? firstReglDate;
  String? secondReglDate;
  String? thirdReglDate;

  PregnancyResultData(
      {this.userDate,
      this.firstPregnancyDate,
      this.secondPregnancyDate,
      this.thirdPregnancyDate,
      this.firstReglDate,
      this.secondReglDate,
      this.thirdReglDate});
}

class UserDataForCocukBoyKilo {
  String? sex; //
  int? weight;
  int? height;
  int? age;

  UserDataForCocukBoyKilo({this.sex, this.weight, this.height, this.age});
}

class ResultDataForCocukBoyKilo {
  String? sex; //
  int? expectedMaxWeight;
  int? expectedMinWeight;
  int? expectedMaxHeight;
  int? expectedMinHeight;
  int? age;
  bool? heightWeightRangeOK;
  String? resultPhrase;

  ResultDataForCocukBoyKilo(
      {this.sex,
      this.expectedMaxWeight,
      this.expectedMinWeight,
      this.expectedMaxHeight,
      this.expectedMinHeight,
      this.age,
      this.heightWeightRangeOK,
      this.resultPhrase});
}
