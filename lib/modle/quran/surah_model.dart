// To parse this JSON data, do
//
//     final fullSurah = fullSurahFromJson(jsonString);




class FullSurah {
  FullSurah({
    required this.index,
    required this.name,
    required this.verse,
    required this.count,
    required this.juz,
    required this.transAr,
    required this.transId,
    required this.transEn,
  });

  final String index;
  final String name;
  final FullSurahVerse verse  , transAr , transEn , transId;
  final int count;
  final List<Juz> juz;

  factory FullSurah.fromJson({required Map<String, dynamic> json , required Map<String, dynamic>  transAr , required Map<String, dynamic>  transEn , required Map<String, dynamic>  transid}) => FullSurah(
    index: json["index"],
    name: json["name"],
    verse: FullSurahVerse.fromJson(json["verse"]),
    count: json["count"],
    juz: List<Juz>.from(json["juz"].map((x) => Juz.fromJson(x))),
    transAr: FullSurahVerse.fromJson(transAr["verse"]),
    transEn: FullSurahVerse.fromJson(transEn["verse"]),
    transId: FullSurahVerse.fromJson(transid["verse"]),
  );


}

class Juz {
  Juz({
    required this.index,
    required this.verse,
  });

  final String index;
  final JuzVerse verse;

  factory Juz.fromJson(Map<String, dynamic> json) => Juz(
    index: json["index"],
    verse: JuzVerse.fromJson(json["verse"]),
  );


}

class JuzVerse {
  JuzVerse({
    required this.start,
    required this.end,
  });

  final String start;
  final String end;

  factory JuzVerse.fromJson(Map<String, dynamic> json) => JuzVerse(
    start: json["start"],
    end: json["end"],
  );


}

class FullSurahVerse {
  FullSurahVerse( {
    required this.verses,
  });

  final List<String> verses;

  factory FullSurahVerse.fromJson(Map<String, dynamic> json) => FullSurahVerse(
     verses: List.from(json.values),
  );


}

