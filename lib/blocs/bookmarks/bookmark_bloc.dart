import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m3allah/modle/azkar/azkar_model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

@immutable
class BookmarksState {
  final List<AzkarList> bookmarkList;
  final double toolBarPos;

  const BookmarksState({required this.bookmarkList, required this.toolBarPos});
}

class BookmarksBloc extends Cubit<BookmarksState> {
  BookmarksBloc() : super(const BookmarksState(bookmarkList: [], toolBarPos: -80));

  static BookmarksBloc of(BuildContext context) {
    return BlocProvider.of<BookmarksBloc>(context);
  }

  final GetStorage _box = GetStorage();
  final String key = 'bookmarks';
  final List<AzkarList> bookmarkList = [];
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  Timer? _timer;
  double _toolBarPos = -80;

  add(AzkarList zekr) {
    if (bookmarkList.contains(zekr)) {
      bookmarkList.remove(zekr);
    } else {
      bookmarkList.insert(0, zekr);
    }
    emit(BookmarksState(bookmarkList: bookmarkList, toolBarPos: _toolBarPos));
    List<Map<String, dynamic>> bookmarkJson = [];
    for (var zekr in bookmarkList) {
      bookmarkJson.add(zekr.toJson());
    }
    _box.write(key, bookmarkJson);
  }

  getBookmarks() {
    var bookmarkJsonList = _box.read(key) ?? [];
    for (var json in bookmarkJsonList) {
      bookmarkList.add(AzkarList.fromJson(json));
    }
    emit(BookmarksState(bookmarkList: bookmarkList, toolBarPos: _toolBarPos));
  }

  scrollTo(int index) {
    itemScrollController.scrollTo(
      index: index + 1,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      alignment: .25,
    );
  }

  openToolBar() {
    _toolBarPos = _toolBarPos == -80 ? 8 : -80;
    resetTimer();
    emit(BookmarksState(bookmarkList: bookmarkList, toolBarPos: _toolBarPos));
  }

  bool get isToolBarOpen => _toolBarPos == -80;

  resetTimer() {
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 3), () {
      if (_toolBarPos == 8) {
        _toolBarPos = _toolBarPos == -80 ? 8 : -80;
        emit(BookmarksState(bookmarkList: bookmarkList, toolBarPos: _toolBarPos));
      }
    });
  }
}
