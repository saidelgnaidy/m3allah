import 'package:bloc/bloc.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';

class SearchState {
  final List<SurahList> listOfSurah;

  const SearchState(this.listOfSurah);
}

class SearchCubit extends Cubit<SearchState> {
  List<SurahList> listOfSurah;
  String _lastQ = '';

  SearchCubit(this.listOfSurah) : super(SearchState(listOfSurah));

  search(String qurey) {
    if (_lastQ != qurey.trim()) {
      _lastQ = qurey.trim();
      emit(SearchState(listOfSurah.where((element) => element.titleAr.contains(qurey.trim().replaceAll('.', ''))).toList()));
    }
  }
}
