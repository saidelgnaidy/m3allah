import 'dart:convert';

import 'package:m3allah/modle/quran/surah_model.dart';

class ReadQuranFullDetails {
  final List<FullSurah> surahlist;
  final JuzList? juzList;

  ReadQuranFullDetails({required this.surahlist, required this.juzList});
}

List<JuzList> juzListFromJson(String str) => List<JuzList>.from(json.decode(str).map((x) => JuzList.fromJson(x)));

class JuzList {
  JuzList({required this.index, required this.start, required this.end, required this.name});

  final String index, name;
  final StartEnd start;
  final StartEnd end;

  factory JuzList.fromJson(Map<String, dynamic> json) => JuzList(
        index: json["index"],
        name: json["name"] ?? 'null',
        start: StartEnd.fromJson(json["start"]),
        end: StartEnd.fromJson(json["end"]),
      );
  Map<String, dynamic> toJson() => {
        "index": index,
        "name":name,
        "start": start.toJson(),
        "end": end.toJson(),
      };
}

class StartEnd {
  StartEnd({
    required this.index,
    required this.verse,
    required this.name,
  });

  final String index;
  final String verse;
  final String name;

  factory StartEnd.fromJson(Map<String, dynamic> json) => StartEnd(
        index: json["index"],
        verse: json["verse"],
        name: json["name"],
      );
  Map<String, dynamic> toJson() => {
        "index": index,
        "verse": verse,
        "name": name,
      };
}
