import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:m3allah/blocs/read_quran/read_quran_cubit.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/views/component/animation.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:m3allah/views/component/store_progress.dart';
import 'package:m3allah/views/component/tool_bar.dart';

class ReadQuran extends StatefulWidget {
  const ReadQuran({Key? key}) : super(key: key);

  @override
  State<ReadQuran> createState() => _ReadQuranState();
}

class _ReadQuranState extends State<ReadQuran> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final ReadQuranCubit readQuran = ReadQuranCubit.of(context)..init(context);

    return BlocBuilder<ReadQuranCubit, ReadQuranState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, size) {
            return Stack(
              alignment: Alignment.center,
              children: [
                FadeScale(
                  child: CupertinoScrollbar(
                    controller: readQuran.scrollController,
                    scrollbarOrientation: ScrollbarOrientation.right,
                    isAlwaysShown: true,
                    thicknessWhileDragging: 15,
                    radius: const Radius.circular(5),
                    radiusWhileDragging: const Radius.circular(20),
                    thickness: 3.5,
                    child: SingleChildScrollView(
                      controller: readQuran.scrollController,
                      child: ListView.builder(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 80),
                        itemCount: readQuran.surahList.length + 1,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, surahI) {
                          if (surahI == readQuran.surahList.length) {
                            return const BuildEnd();
                          } else {
                            return CupertinoScrollbar(
                              controller: readQuran.scrollController,
                              child: Column(
                                children: [
                                  if (readQuran.surahList[surahI].index == '009') const SizedBox(height: 15) else const BuildBasmla(),
                                  SelectableText.rich(
                                    TextSpan(
                                      children: List.generate(readQuran.calcStartIndex(surah: readQuran.surahList[surahI], i: 0).length, (index) => index).map(
                                        (i) {
                                          return TextSpan(
                                            children: [
                                              TextSpan(
                                                text: readQuran.surahList[surahI].verse.verses[readQuran.calcStartIndex(surah: readQuran.surahList[surahI], i: i).start],
                                                style: Theme.of(context).textTheme.caption,
                                              ),
                                              TextSpan(
                                                text: ' ﴿${readQuran.calcStartIndex(surah: readQuran.surahList[surahI], i: i).start + 1}﴾ ',
                                                style: TextStyle(
                                                  color: Theme.of(context).iconTheme.color,
                                                  fontSize: (Theme.of(context).textTheme.caption?.fontSize ?? 10) - 6,
                                                  fontFamily: 'font3',
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ).toList(),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  left: isMobile(context) ? readQuran.toolBarPos : null,
                  top: isMobile(context) ? null : readQuran.toolBarPos,
                  curve: Curves.easeInOutBack,
                  duration: const Duration(milliseconds: 500),
                  child: ToolBar(),
                ),
                Positioned(
                  bottom: 0,
                  width: size.biggest.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingBtn(
                          onTap: () {
                            BuildViewBloc.of(context).push(BuildViewState.quran(initTap: readQuran.selectedJus == null ? 0 : 1));
                            return true;
                          },
                          eIcon: Icons.arrow_back,
                          sIcon: Icons.arrow_back,
                        ),
                        StoreProgress(
                          onSave: () {
                            SettingsBloc.of(context).saveLastRead(context: context, lastOffset: readQuran.scrollController.offset);
                          },
                        ),
                        FloatingBtn(
                          onTap: () {
                            readQuran.openToolBar();
                            return true;
                          },
                          sIcon: readQuran.isToolBarOpen() ? Icons.settings : Icons.close,
                          eIcon: readQuran.isToolBarOpen() ? Icons.settings : Icons.close,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

TextSpan verseSpan({required FullSurah surah, required IndexesOfJuz indexesOfJuz}) {
  return TextSpan(
    children: [
      TextSpan(
        text: surah.verse.verses[indexesOfJuz.start],
        style: Theme.of(Get.context!).textTheme.caption,
      ),
      TextSpan(
        text: ' ﴿${indexesOfJuz.start + 1}﴾ ',
        style: TextStyle(
          color: Theme.of(Get.context!).iconTheme.color,
          fontSize: (Theme.of(Get.context!).textTheme.caption?.fontSize ?? 10) - 8,
          fontFamily: 'font3',
        ),
      ),
    ],
  );
}

