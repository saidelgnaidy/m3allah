import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/modle/juz_list_modle/juz_list_modle.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:m3allah/views/component/translation_sheet.dart';
import 'package:wakelock/wakelock.dart';

class ReadQuran extends StatefulWidget {
  const ReadQuran({Key? key}) : super(key: key);

  @override
  _ReadQuranState createState() => _ReadQuranState();
}

class _ReadQuranState extends State<ReadQuran> with AutomaticKeepAliveClientMixin {
  double toolBarPos = -80;
  ScrollController scrollController = ScrollController();
  double speedFactor = 5;
  double lastOffset = 0;
  final int _versIndex = 0;
  late List<FullSurah> surahList;
  JuzList? _selectedJus;

  @override
  void initState() {
    Wakelock.toggle(enable: true);

    surahList = context.read<BuildViewBloc>().readQuranFullDetails.surahlist;
    _selectedJus = context.read<BuildViewBloc>().readQuranFullDetails.juzList;
    WidgetsBinding.instance?.addPostFrameCallback((context) async => _scrollToLastOffset());

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    Wakelock.toggle(enable: false);
    super.dispose();
  }

  void _scrollToLastOffset() {
    final setting = context.read<SettingsBloc>().settingsModel;

    if (scrollController.hasClients) {
      if (_selectedJus != null && setting.lastJuz != null) {
        if (_selectedJus!.index == setting.lastJuz!.index) {
          scrollController.jumpTo(setting.lastJuzOffset);
        }
      } else if (setting.lastSurah != null) {
        if (context.read<BuildViewBloc>().selectedSurahList!.index == setting.lastSurah!.index) {
          scrollController.jumpTo(setting.lastSurahOffset);
        }
      }
    }
  }

  _scrollToBottom() {
    int time = (scrollController.position.maxScrollExtent - scrollController.position.pixels) ~/ speedFactor;
    final int h = Duration(seconds: time).inHours;
    final int m = Duration(seconds: time).inMinutes % 60;

    String hours = h > 0 ? '$h ساعة ' : '';
    String min = m > 0 ? '$m دقيقة ' : '';
    showSnakBar(context, ' ستقوم بأنهاء القراءة بعد : $hours  $min ');
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(seconds: time),
      curve: Curves.linear,
    );
  }

  IndexesOfJuz calcStartIndex({required FullSurah surah, required int i}) {
    if (_selectedJus != null) {
      if (_selectedJus!.start.index == surah.index && _selectedJus!.end.index == surah.index) {
        return IndexesOfJuz(length: int.parse(_selectedJus!.end.verse) - int.parse(_selectedJus!.start.verse) + 1, start: int.parse(_selectedJus!.start.verse) + i);
      } else if (_selectedJus!.start.index == surah.index) {
        return IndexesOfJuz(length: surah.count - int.parse(_selectedJus!.start.verse) + 1, start: int.parse(_selectedJus!.start.verse) + i);
      } else if (_selectedJus!.end.index == surah.index) {
        return IndexesOfJuz(length: int.parse(_selectedJus!.end.verse), start: i + 1);
      } else {
        return IndexesOfJuz(length: surah.count, start: i);
      }
    } else {
      return IndexesOfJuz(length: surah.count, start: i + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      crossAxisCount: 1,
      itemCount: surahList.length,
      controller: scrollController,
      itemBuilder: (context, surahI) {
        final surah = surahList[surahI];
        int _versIndex = 0;
        return Column(
          children: [
            const BuildBasmla(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: SelectableText.rich(
                _selectedJus != null
                    ? TextSpan(
                        children: [
                          if (_selectedJus!.start.index == surah.index && _selectedJus!.end.index == surah.index)
                            ...List.generate(int.parse(_selectedJus!.end.verse) - int.parse(_selectedJus!.start.verse) + 1, (index) => index).map((i) {
                              return versTextSpan(context, surah: surah, versIndex: int.parse(_selectedJus!.start.verse) + i);
                            })
                          else if (_selectedJus!.start.index == surah.index)
                            ...List.generate(surah.count - int.parse(_selectedJus!.start.verse) + 1, (index) => index).map((i) {
                              return versTextSpan(context, surah: surah, versIndex: int.parse(_selectedJus!.start.verse) + i);
                            })
                          else if (_selectedJus!.end.index == surah.index)
                            ...List.generate(int.parse(_selectedJus!.end.verse), (index) => index).map((i) {
                              return versTextSpan(context, surah: surah, versIndex: i + 1);
                            })
                          else
                            ...surah.verse.verses.map((vers) {
                              _versIndex++;
                              return versTextSpan(context, surah: surah, versIndex: _versIndex);
                            }),
                        ],
                      )
                    : TextSpan(
                        children: [
                          ...surah.verse.verses.map((vers) {
                            _versIndex++;
                            return versTextSpan(context, surah: surah, versIndex: _versIndex);
                          }),
                        ],
                      ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

TextSpan versTextSpan(BuildContext context, {required FullSurah surah, required int versIndex}) {
  return TextSpan(
    children: [
      TextSpan(
        text: surah.verse.verses[versIndex - 1],
        style: Theme.of(context).textTheme.caption,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              barrierColor: Colors.black87,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8))),
              builder: (context) {
                return Translation(
                  transAR: surah.transAr.verses[versIndex - 1],
                  transEn: surah.transEn.verses[versIndex - 1],
                  transId: surah.transId.verses[versIndex - 1],
                );
              },
            );
          },
      ),
      TextSpan(
        text: ' ﴿$versIndex﴾ ',
        style: TextStyle(
          color: Theme.of(context).iconTheme.color,
          fontSize: (Theme.of(context).textTheme.caption?.fontSize ?? 10) - 8,
          fontFamily: 'font3',
        ),
      ),
    ],
  );
}

   /// return LayoutBuilder(builder: (context, constrains) {
  ///     return Stack(
  ///       alignment: Alignment.center,
  ///       children: [
  ///         FadeScale(
  ///           child: CupertinoScrollbar(
  ///             isAlwaysShown: true,
  ///             controller: scrollController,
  ///             thickness: 2,
  ///             scrollbarOrientation: ScrollbarOrientation.left,
  ///             thicknessWhileDragging: 20,
  ///             radiusWhileDragging: const Radius.circular(20),
  ///             radius: const Radius.circular(20),
  ///             child: SingleChildScrollView(
  ///               controller: scrollController,
  ///               physics: const BouncingScrollPhysics(),
  ///               child: Column(
  ///                 children: [
  ///                   ...surahList.map((surah) {
  ///                     _versIndex = 0;
  ///                     return Column(
  ///                       children: [
  ///                         const BuildBasmla(),
  ///                         Padding(
  ///                           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
  ///                           child: SelectableText.rich(
  ///                             _selectedJus != null
  ///                                 ? TextSpan(
  ///                                     children: [
  ///                                       if (_selectedJus!.start.index == surah.index && _selectedJus!.end.index == surah.index)
  ///                                         ...List.generate(int.parse(_selectedJus!.end.verse) - int.parse(_selectedJus!.start.verse) + 1, (index) => index).map((i) {
  ///                                           return versTextSpan(context, surah: surah, versIndex: int.parse(_selectedJus!.start.verse) + i);
  ///                                         })
  ///                                       else if (_selectedJus!.start.index == surah.index)
  ///                                         ...List.generate(surah.count - int.parse(_selectedJus!.start.verse) + 1, (index) => index).map((i) {
  ///                                           return versTextSpan(context, surah: surah, versIndex: int.parse(_selectedJus!.start.verse) + i);
  ///                                         })
  ///                                       else if (_selectedJus!.end.index == surah.index)
  ///                                         ...List.generate(int.parse(_selectedJus!.end.verse), (index) => index).map((i) {
  ///                                           return versTextSpan(context, surah: surah, versIndex: i + 1);
  ///                                         })
  ///                                       else
  ///                                         ...surah.verse.verses.map((vers) {
  ///                                           _versIndex++;
  ///                                           return versTextSpan(context, surah: surah, versIndex: _versIndex);
  ///                                         }),
  ///                                     ],
  ///                                   )
  ///                                 : TextSpan(
  ///                                     children: [
  ///                                       ...surah.verse.verses.map((vers) {
  ///                                         _versIndex++;
  ///                                         return versTextSpan(context, surah: surah, versIndex: _versIndex);
  ///                                       }),
  ///                                     ],
  ///                                   ),
  ///                             textAlign: TextAlign.center,
  ///                           ),
  ///                         ),
  ///                       ],
  ///                     );
  ///                   }),
  ///                   const BuildEnd()
  ///                 ],
  ///               ),
  ///             ),
  ///           ),
  ///         ),
  ///         AnimatedPositioned(
  ///           left: isMobile(context) ? toolBarPos : null,
  ///           top: isMobile(context) ? null : toolBarPos,
  ///           curve: Curves.easeInOutBack,
  ///           duration: const Duration(milliseconds: 500),
  ///           child: ToolBar(
  ///             slowDown: () {
  ///               if (speedFactor > 1) {
  ///                 speedFactor = speedFactor - .5;
  ///                 _scrollToBottom();
  ///               }
  ///             },
  ///             speedUp: () {
  ///               speedFactor = speedFactor + .5;
  ///               _scrollToBottom();
  ///             },
  ///           ),
  ///         ),
  ///         Positioned(
  ///           bottom: 0,
  ///           width: constrains.biggest.width,
  ///           child: Padding(
  ///             padding: const EdgeInsets.symmetric(horizontal: 8),
  ///             child: Row(
  ///               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  ///               children: [
  ///                 FloatingBtn(
  ///                   onTap: () {
  ///                     context.read<SettingsBloc>().saveLastRead(context: context, lastOffset: scrollController.offset);

  ///                     context.read<BuildViewBloc>().push(BuildViewState.quran(initTap: _selectedJus == null ? 0 : 1));
  ///                     return true;
  ///                   },
  ///                   eIcon: Icons.arrow_back,
  ///                   sIcon: Icons.arrow_back,
  ///                 ),
  ///                 StoreProgress(
  ///                   onSave: () {
  ///                     context.read<SettingsBloc>().saveLastRead(context: context, lastOffset: scrollController.offset);
  ///                   },
  ///                 ),
  ///                 FloatingBtn(
  ///                   onTap: () {
  ///                     setState(() {
  ///                       toolBarPos = toolBarPos == -80 ? 8 : -80;
  ///                     });
  ///                     return true;
  ///                   },
  ///                   sIcon: toolBarPos == -80 ? Icons.settings : Icons.close,
  ///                   eIcon: toolBarPos == -80 ? Icons.settings : Icons.close,
  ///                 ),
  ///               ],
  ///             ),
  ///           ),
  ///         ),
  ///       ],
  ///     );
  ///   });
  /// }