



import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';

class ThemeToggleBtn extends StatelessWidget {
  ThemeToggleBtn({Key? key}) : super(key: key);
  final AnimateIconController animateIconController = AnimateIconController() ;


  @override
  Widget build(BuildContext context) {
    final settings = context.read<SettingsBloc>();

    return AnimateIcons(
      startIcon: settings.settingsModel.isLight ? Icons.nights_stay_rounded : Icons.wb_sunny_rounded,
      endIcon: settings.settingsModel.isLight ? Icons.nights_stay_rounded : Icons.wb_sunny_rounded,
      controller: animateIconController,
      size: 22.0,
      onStartIconPress: () {
        settings.toggleThemeData();
        return true;
      },
      onEndIconPress: () {
        settings.toggleThemeData();
        return true;
      },
      duration: const Duration(milliseconds: 300),
      endIconColor: Theme.of(context).iconTheme.color,
      startIconColor: Theme.of(context).iconTheme.color,
      clockwise: false,
    );
  }
}

