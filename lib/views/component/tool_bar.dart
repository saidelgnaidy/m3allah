import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/azkar/azkar_cubit.dart';
import 'package:m3allah/blocs/bookmarks/bookmark_bloc.dart';
import 'package:m3allah/blocs/read_quran/read_quran_cubit.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/views/component/const.dart';

class ToolBar extends StatelessWidget {
  final bool? speedCtrl;
  ToolBar({Key? key, this.speedCtrl}) : super(key: key);

  final AnimateIconController ctrl = AnimateIconController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuildViewBloc, BuildViewState>(
      builder: (context, state) {
        final bool show = state.maybeWhen(orElse: () => false, azkar: (azkar) => true, readSurah: () => true, bookmarks: () => true);
        final SettingsBloc setting = SettingsBloc.of(context);
        final ReadQuranCubit readQuran = ReadQuranCubit.of(context);
        final AzkarCubit azkarCubit = AzkarCubit.of(context);
        final BookmarksBloc bookmark = BookmarksBloc.of(context);

        void increaseFont() {
          readQuran.toggleToolBar();
          state.maybeWhen(
            orElse: () => false,
            azkar: (azkar) => azkarCubit.resetTimer(),
            bookmarks: () => bookmark.resetTimer(),
          );
          setting.increaseFontSize();
        }

        void dencreaseFont() {
          readQuran.toggleToolBar();
          state.maybeWhen(
            orElse: () => false,
            azkar: (azkar) => azkarCubit.resetTimer(),
            bookmarks: () => bookmark.resetTimer(),
          );
          setting.decreaseFontSize();
        }

        void changeFont() {
          readQuran.toggleToolBar();
          state.maybeWhen(
            orElse: () => false,
            azkar: (azkar) => azkarCubit.resetTimer(),
            bookmarks: () => bookmark.resetTimer(),
          );
          setting.updateFont();
        }

        if (show) {
          if (isMobile(context)) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                boxShadow: kBoxShadow(),
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.add_circle_rounded),
                    onPressed: increaseFont,
                  ),
                  Text('??????????', style: Theme.of(context).textTheme.bodyText1),
                  IconButton(
                    icon: const Icon(Icons.remove_circle_rounded),
                    onPressed: dencreaseFont,
                  ),
                  const SizedBox(width: 34, child: Divider(thickness: 1)),
                  IconButton(
                    icon: const Icon(Icons.font_download_rounded),
                    onPressed: changeFont,
                  ),
                  if (speedCtrl == null && state.maybeWhen(orElse: () => false, readSurah: () => true))
                    Column(
                      children: [
                        const SizedBox(width: 34, child: Divider(thickness: 1)),
                        IconButton(
                          icon: const Icon(Icons.add_circle_rounded),
                          onPressed: () {
                            state.maybeWhen(orElse: () => null, readSurah: readQuran.scrollToBottom(.5));
                          },
                        ),
                        Text('????????????', style: Theme.of(context).textTheme.bodyText1),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_rounded),
                          onPressed: () {
                            state.maybeWhen(orElse: () => null, readSurah: readQuran.scrollToBottom(-.5));
                          },
                        ),
                      ],
                    ),
                ],
              ),
            );
          } else {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                boxShadow: kBoxShadow(),
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.add_circle_rounded),
                    onPressed: increaseFont,
                  ),
                  Text('??????????', style: Theme.of(context).textTheme.bodyText1),
                  IconButton(
                    icon: const Icon(Icons.remove_circle_rounded),
                    onPressed: dencreaseFont,
                  ),
                  const SizedBox(height: 35, child: VerticalDivider(thickness: 1)),
                  IconButton(
                    icon: const Icon(Icons.font_download_rounded),
                    onPressed: changeFont,
                  ),
                  if (speedCtrl == null && state.maybeWhen(orElse: () => false, readSurah: () => true))
                    Row(
                      children: [
                        const SizedBox(height: 35, child: VerticalDivider(thickness: 1)),
                        IconButton(
                          icon: const Icon(Icons.add_circle_rounded),
                          onPressed: () {
                            state.maybeWhen(orElse: () => null, readSurah: readQuran.scrollToBottom(.5));
                          },
                        ),
                        Text('????????????', style: Theme.of(context).textTheme.bodyText1),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_rounded),
                          onPressed: () {
                            state.maybeWhen(orElse: () => null, readSurah: readQuran.scrollToBottom(-.5));
                          },
                        ),
                      ],
                    ),
                ],
              ),
            );
          }
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
