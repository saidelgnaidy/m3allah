import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/views/component/const.dart';

class ToolBar extends StatelessWidget {
  final Function()? speedUp, slowDown;

  ToolBar({Key? key, this.speedUp, this.slowDown}) : super(key: key);

  final AnimateIconController ctrl = AnimateIconController();

  @override
  Widget build(BuildContext context) {
    final SettingsBloc setting = context.read<SettingsBloc>();

    return BlocBuilder<BuildViewBloc, BuildViewState>(
      builder: (context, state) {
        final bool show = state.maybeWhen(orElse: () => false, azkar: (v) => true, readSurah: () => true);

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
                    onPressed: () {
                      setting.increaseFontSize();
                    },
                  ),
                  Text('الحجم', style: Theme.of(context).textTheme.bodyText1),
                  IconButton(
                    icon: const Icon(Icons.remove_circle_rounded),
                    onPressed: () {
                      setting.decreaseFontSize();
                    },
                  ),
                  const SizedBox(width: 34, child: Divider(thickness: 1)),
                  IconButton(
                    icon: const Icon(Icons.font_download_rounded),
                    onPressed: () {
                      setting.updateFont();
                    },
                  ),
                  if (slowDown != null )
                    Column(
                      children: [
                        const SizedBox(width: 34, child: Divider(thickness: 1)),
                        IconButton(
                          icon: const Icon(Icons.add_circle_rounded),
                          onPressed: speedUp,
                        ),
                        Text('السرعة', style: Theme.of(context).textTheme.bodyText1),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_rounded),
                          onPressed: slowDown,
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
                    onPressed: () {
                      setting.increaseFontSize();
                    },
                  ),
                  Text('الحجم', style: Theme.of(context).textTheme.bodyText1),
                  IconButton(
                    icon: const Icon(Icons.remove_circle_rounded),
                    onPressed: () {
                      setting.decreaseFontSize();
                    },
                  ),
                  SizedBox(
                    width: isMobile(context) ? 35 : null,
                    height: isMobile(context) ? null : 35,
                    child: isMobile(context) ? const Divider(thickness: 1) : const VerticalDivider(thickness: 1),
                  ),
                  IconButton(
                    icon: const Icon(Icons.font_download_rounded),
                    onPressed: () {
                      setting.updateFont();
                    },
                  ),
                  if (state.maybeWhen(orElse: () => false, readSurah: () => true))
                    Row(
                      children: [
                        SizedBox(
                          width: isMobile(context) ? 35 : null,
                          height: isMobile(context) ? null : 35,
                          child: isMobile(context) ? const Divider(thickness: 1) : const VerticalDivider(thickness: 1),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle_rounded),
                          onPressed: speedUp,
                        ),
                        Text('السرعة', style: Theme.of(context).textTheme.bodyText1),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_rounded),
                          onPressed: slowDown,
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
