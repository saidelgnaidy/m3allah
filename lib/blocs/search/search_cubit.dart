
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';

class SearchState {
  final List<SurahList> listOfSurah;

  const SearchState(this.listOfSurah);
}

class SearchCubit extends Cubit<SearchState> {
  List<SurahList> listOfSurah;
  String _lastQ = '';
  
  static SearchCubit of(BuildContext context) {
   return BlocProvider.of<SearchCubit>(context);
  }

  SearchCubit(this.listOfSurah) : super(SearchState(listOfSurah));

  search(String qurey) {
    if (_lastQ != qurey.trim()) {
      _lastQ = qurey.trim();
      emit(SearchState(listOfSurah.where((element) => element.titleAr.contains(qurey.trim().replaceAll('.', ''))).toList()));
    }
  }
}
