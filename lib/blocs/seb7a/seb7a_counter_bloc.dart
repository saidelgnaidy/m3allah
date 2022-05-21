// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_event.dart';
import 'package:m3allah/modle/azkar/seb7a_model.dart';

class Seb7aCounterBloc extends Bloc<Seb7aCounterEvent, Seb7aCounterState> {
  int _counter = 0;

  final GetStorage _box = GetStorage();

  Seb7aCounterBloc() : super(Seb7aCounterState(counter: 0, selectedZekr: Seb7aAzkar.seb7aZekr.first)) {
    on<IncreaseSeb7aCounter>(_increase);
    on<ResetSeb7aCounter>(_reset);
    on<SelecteSeb7aZekr>(_selectSeb7aZeke);
  }

  FutureOr<void> _increase(Seb7aCounterEvent event, Emitter<Seb7aCounterState> emit) async {
    _counter++;
    HapticFeedback.lightImpact();
    var count = _box.read(state.selectedZekr.id.toString()) ?? 0;
    _box.write(state.selectedZekr.id.toString(), count + 1);
    emit(Seb7aCounterState(counter: _counter, selectedZekr: state.selectedZekr));
  }

  FutureOr<void> _reset(Seb7aCounterEvent event, Emitter<Seb7aCounterState> emit) {
    _counter = 0;
    HapticFeedback.mediumImpact();
    emit(Seb7aCounterState(counter: _counter, selectedZekr: state.selectedZekr));
  }

  FutureOr<void> _selectSeb7aZeke(SelecteSeb7aZekr event, Emitter<Seb7aCounterState> emit) {
    if (event.seb7aZekr != state.selectedZekr) {
      _counter = 0;
      emit(Seb7aCounterState(counter: _counter, selectedZekr: event.seb7aZekr));
    }
    Get.back();
  }
}





class Seb7aAzkar {
  static List<Seb7aZekr> seb7aZekr = seb7aZekrFromList(_azkar);

  static final List<Map<String, dynamic>> _azkar = [
    {"content": "الْلَّهُ أَكْبَرُ", "description": "من قالها كتبت له عشرون حسنة وحطت عنه عشرون سيئة", "id": 1},
    {"content": "سُبْحَانَ اللَّهِ", "description": "يكتب له ألف حسنة أو يحط عنه ألف خطيئة", "id": 2},
    {"content": "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ", "description": "تملأ ميزان العبد بالحسنات", "id": 3},
    {
      "content": "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
      "description": "لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ",
      "id": 4
    },
    {"content": "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ", "description": "تَمْلَآَنِ مَا بَيْنَ السَّمَاوَاتِ وَالْأَرْضِ", "id": 5},
    {"content": "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ ", "description": "غرست له نخلة في الجنة", "id": 6},
    {"content": "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ ", "description": "ثقيلتان في الميزان حبيبتان إلى الرحمن", "id": 7},
    {"content": "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ", "description": "كنز من كنوز الجنة", "id": 8},
    {"content": "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد ", "description": "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة", "id": 9},
    {"content": "أستغفر الله", "description": "لفعل الرسول صلى الله عليه وسلم", "id": 10},
    {"content": "لَا إِلَهَ إِلَّا اللَّهُ", "description": "أفضل الذكر لا إله إلاّ الله", "id": 11},
    {
      "content": "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً ",
      "description": "قَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَجِبْتُ لَهَا ، فُتِحَتْ لَهَا أَبْوَابُ السَّمَاءِ",
      "id": 12
    },
    {
      "content": "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ",
      "description": "قَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَقَدْ رَأَيْتُ اثْنَيْ عَشَرَ مَلَكًا يَبْتَدِرُونَهَا، أَيُّهُمْ يَرْفَعُهَا",
      "id": 13
    },
    {
      "content": "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَر",
      "description": "أنهن أحب الكلام الى الله، ومكفرات للذنوب، وغرس الجنة، وجنة لقائلهن من النار، وأحب الى النبي عليه السلام مما طلعت عليه الشمس، والْبَاقِيَاتُ الْصَّالِحَات",
      "id": 14
    },
    {
      "content": "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ",
      "description": "كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان",
      "id": 15
    }
  ];
}
