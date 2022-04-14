import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_event.dart';
import 'package:m3allah/modle/azkar/seb7a_model.dart';

class Seb7aCounterBloc extends Bloc<Seb7aCounterEvent, Seb7aCounterState> {
  int _counter = 0;
  List<Seb7aZekr> _seb7aAzkar = [];
  late Seb7aZekr _selectedZekr;

  final GetStorage _box = GetStorage();

  Seb7aCounterBloc() : super(const Seb7aCounterState.loading()) {
    on<IncreaseSeb7aCounter>(_increase);
    on<ResetSeb7aCounter>(_reset);
    on<LoadingSeb7a>(_loadingSeb7a);
    on<SelecteSeb7aZekr>(_selectSeb7aZeke);
  }

  FutureOr<void> _increase(Seb7aCounterEvent event, Emitter<Seb7aCounterState> emit) async {
    _counter++;
    HapticFeedback.lightImpact();

    state.when(
      laoded: (counter, azkar, seb7aZekr) {
        var count = _box.read(seb7aZekr.id.toString()) ?? 0;
        _box.write(seb7aZekr.id.toString(), count + 1);
        emit(Seb7aCounterState.laoded(counter: _counter, azkar: azkar, seb7aZekr: seb7aZekr));
      },
      loading: () => emit(Seb7aCounterState.laoded(counter: _counter, azkar: _seb7aAzkar, seb7aZekr: _selectedZekr)),
    );
  }

  FutureOr<void> _reset(Seb7aCounterEvent event, Emitter<Seb7aCounterState> emit) {
    _counter = 0;
    HapticFeedback.mediumImpact();

    state.when(
      laoded: (counter, azkar, seb7aZekr) => emit(Seb7aCounterState.laoded(counter: _counter, azkar: azkar, seb7aZekr: seb7aZekr)),
      loading: () => emit(Seb7aCounterState.laoded(counter: _counter, azkar: _seb7aAzkar, seb7aZekr: _selectedZekr)),
    );
  }

  Future<void> _loadSeb7aZekr() async {
    var seb7aJson = await DefaultAssetBundle.of(Get.context!).loadString('assets/azkar/seb7a.json');
    var list = seb7aZekrFromJson(seb7aJson);
    list.sort((a, b) => a.id.compareTo(b.id));
    _seb7aAzkar = list;
  }

  FutureOr<void> _loadingSeb7a(LoadingSeb7a event, Emitter<Seb7aCounterState> emit) async {
    emit(const Seb7aCounterState.loading());
    await _loadSeb7aZekr();
    _selectedZekr = _seb7aAzkar.first;
    emit(Seb7aCounterState.laoded(counter: _counter, azkar: _seb7aAzkar, seb7aZekr: _selectedZekr));
  }

  FutureOr<void> _selectSeb7aZeke(SelecteSeb7aZekr event, Emitter<Seb7aCounterState> emit) {
    _counter = 0;
    emit(Seb7aCounterState.laoded(counter: _counter, azkar: _seb7aAzkar, seb7aZekr: event.seb7aZekr));
    Get.back();
  }
}
