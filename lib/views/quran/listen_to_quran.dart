import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/quran_player/quran_player_bloc.dart';
import 'package:m3allah/blocs/quran_player/quran_player_event.dart';
import 'package:m3allah/blocs/read_quran/read_quran_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/tool_bar.dart';
import 'package:m3allah/views/component/translation_sheet.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class QuranPlayer extends StatefulWidget {
  const QuranPlayer({Key? key}) : super(key: key);

  @override
  State<QuranPlayer> createState() => _QuranPlayerState();
}

class _QuranPlayerState extends State<QuranPlayer> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final ReadQuranCubit readQuran = ReadQuranCubit.of(context);
    super.build(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        if (readQuran.selectedJus == null)
          ScrollablePositionedList.builder(
            itemCount: readQuran.surahList.first.verse.verses.length + 2,
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 80),
            itemScrollController: QuranPlayerBloc.of(context).versScrollCtrl,
            itemPositionsListener: QuranPlayerBloc.of(context).versPositionsListener,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (index == 0 ) {
                if(readQuran.surahList.first.index == '009' ) {
                  return const SizedBox(height: 15);
                } else {
                  return const BuildBasmla();
                }
              } else if (index == readQuran.surahList.first.verse.verses.length + 1) {
                return const BuildEnd();
              } else {
                return QuranPlayerTile(surah: readQuran.surahList.first, versIndex: index - 1);
              }
            },
          )
        else
          ScrollablePositionedList.builder(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 80),
            itemCount: readQuran.surahList.length + 1,
            itemBuilder: (context, surahI) {
              if (surahI == readQuran.surahList.length) {
                return const BuildEnd();
              } else {
                return Column(
                  children: [
                    if (readQuran.surahList[surahI].index != '009') const BuildBasmla(),
                    ScrollablePositionedList.builder(
                      itemCount: readQuran.calcStartIndex(surah: readQuran.surahList[surahI], i: 1).length,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return QuranPlayerTile(
                          surah: readQuran.surahList[surahI],
                          versIndex: readQuran.calcStartIndex(surah: readQuran.surahList[surahI], i: index).start,
                        );
                      },
                    ),
                  ],
                );
              }
            },
          ),
        BlocBuilder<ReadQuranCubit, ReadQuranState>(
          builder: (context, state) {
            return AnimatedPositioned(
              left: isMobile(context) ? state.toolBarPos : null,
              top: isMobile(context) ? null : state.toolBarPos,
              curve: Curves.easeInOutBack,
              duration: const Duration(milliseconds: 500),
              child: ToolBar(speedCtrl: false),
            );
          },
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: BlocBuilder<ReadQuranCubit, ReadQuranState>(
            builder: (context, state) {
              return FloatingBtn(
                onTap: () {
                  ReadQuranCubit.of(context).openToolBar();
                  return true;
                },
                sIcon: ReadQuranCubit.of(context).isToolBarOpen() ? Icons.settings : Icons.close,
                eIcon: ReadQuranCubit.of(context).isToolBarOpen() ? Icons.settings : Icons.close,
              );
            },
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: FloatingBtn(
            onTap: () {
              BuildViewBloc.of(context).push(BuildViewState.quran(initTap: readQuran.selectedJus == null ? 0 : 1));
              return true;
            },
            eIcon: Icons.arrow_back,
            sIcon: Icons.arrow_back,
          ),
        ),
        if (readQuran.selectedJus == null)
          BlocBuilder<QuranPlayerBloc, QuranPlayerState>(
            builder: (context, state) {
              return Positioned(
                bottom: 8,
                child: FloatingBtn(
                  onTap: () {
                    QuranPlayerBloc.of(context).add(QuranPlayerEvent.playAll(surah: readQuran.surahList.first, versIndex: 1));
                    return true;
                  },
                  sIcon: QuranPlayerBloc.of(context).playAll ? Icons.pause_rounded : Icons.playlist_play_rounded,
                  eIcon: QuranPlayerBloc.of(context).playAll ? Icons.pause_rounded : Icons.playlist_play_rounded,
                ),
              );
            },
          ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class QuranPlayerTile extends StatelessWidget {
  final FullSurah surah;
  final int versIndex;
  const QuranPlayerTile({Key? key, required this.surah, required this.versIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = AnimateIconController();
    final quranPlayer = context.read<QuranPlayerBloc>();
    final path = '${surah.index}/${(versIndex + 1).toString().padLeft(3, '0')}';

    return Builder(builder: (context) {
      return InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            barrierColor: Colors.black87,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8))),
            builder: (context) {
              return Translation(
                transAR: surah.transAr.verses[versIndex],
                transEn: surah.transEn.verses[versIndex],
                transId: surah.transId.verses[versIndex],
              );
            },
          );
        },
        child: BlocBuilder<QuranPlayerBloc, QuranPlayerState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: (() => const SizedBox()),
              initial: (playNow) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.surface,
                    boxShadow: kBoxShadow(),
                    border: playNow == path ? Border.all(color: Theme.of(context).iconTheme.color!, width: 1) : null,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.surface,
                          boxShadow: kBoxShadow(),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: AnimateIcons(
                                controller: ctrl,
                                startIcon: playNow == path ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                endIcon: playNow == path ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                size: 22.0,
                                onStartIconPress: () {
                                  quranPlayer.add(QuranPlayerEvent.playVers(versIndex: versIndex + 1, surahIndex: surah.index));
                                  return true;
                                },
                                onEndIconPress: () {
                                  quranPlayer.add(QuranPlayerEvent.playVers(versIndex: versIndex + 1, surahIndex: surah.index));
                                  return true;
                                },
                                duration: const Duration(milliseconds: 200),
                                endIconColor: Theme.of(context).iconTheme.color,
                                startIconColor: Theme.of(context).iconTheme.color,
                                clockwise: false,
                              ),
                            ),
                            Text(
                              ' ﴿${versIndex + 1}﴾ ',
                              style: TextStyle(
                                color: Theme.of(context).iconTheme.color,
                                fontSize: (Theme.of(context).textTheme.caption?.fontSize ?? 10) - 8,
                                fontFamily: 'font3',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Text(
                          surah.verse.verses[versIndex],
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: Text(
                            surah.transEn.verses[versIndex].replaceAll('.', ''),
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      );
    });
  }
}
