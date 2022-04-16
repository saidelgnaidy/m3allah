import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/read_quran/read_quran_cubit.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/views/component/animation.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:m3allah/views/component/store_progress.dart';
import 'package:m3allah/views/component/tool_bar.dart';
import 'package:wakelock/wakelock.dart';

class ReadQuran extends StatefulWidget {
  const ReadQuran({Key? key}) : super(key: key);

  @override
  _ReadQuranState createState() => _ReadQuranState();
}

class _ReadQuranState extends State<ReadQuran> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    Wakelock.toggle(enable: true);
    super.initState();
  }

  @override
  void dispose() {
    Wakelock.toggle(enable: false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final ReadQuranCubit readQuran = context.read<ReadQuranCubit>()..init(context);

    return BlocBuilder<ReadQuranCubit, ReadQuranState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            FadeScale(
              scale: .97,
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 80),
                itemCount: readQuran.surahList.length + 1,
                controller: readQuran.scrollController,
                itemBuilder: (context, surahI) {
                  if (surahI == readQuran.surahList.length) {
                    return const BuildEnd();
                  } else {
                    return Column(
                      children: [
                        const BuildBasmla(),
                        SelectableText.rich(
                           TextSpan(
                            children: List.generate(readQuran.calcStartIndex(surah: readQuran.surahList[surahI], i: 0).length, (index) => index).map((i) {
                              return versTextSpan(context, surah: readQuran.surahList[surahI], versIndex: readQuran.calcStartIndex(surah: readQuran.surahList[surahI], i: i).start);
                            }).toList(),
                          ),
                        ),
                      ],
                    );
                  }
                },
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
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingBtn(
                      onTap: () {
                        context.read<SettingsBloc>().saveLastRead(context: context, lastOffset: readQuran.scrollController.offset);
                        context.read<BuildViewBloc>().push(BuildViewState.quran(initTap: readQuran.selectedJus == null ? 0 : 1));
                        return true;
                      },
                      eIcon: Icons.arrow_back,
                      sIcon: Icons.arrow_back,
                    ),
                    StoreProgress(
                      onSave: () {
                        context.read<SettingsBloc>().saveLastRead(context: context, lastOffset: readQuran.scrollController.offset);
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
