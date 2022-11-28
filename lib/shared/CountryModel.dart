class CountryModel {
  String ulke;
  String ortalama;
  String kadin;
  String erkek;

  CountryModel({this.ulke, this.ortalama, this.kadin, this.erkek});

  CountryModel.fromJson(Map<String, dynamic> json)
      : ulke = json['ulke'].toString(),
        ortalama = json['ortalama'].toString(),
        kadin = json['kadin'].toString(),
        erkek = json['erkek'].toString();

  Map<String, dynamic> toJson() => {
        'ulke': ulke,
        'ortalama': ortalama,
        'kadin': kadin,
        'erkek': erkek,
      };
}
