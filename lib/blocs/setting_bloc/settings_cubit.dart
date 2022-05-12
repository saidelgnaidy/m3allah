import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/modle/juz_list_modle/juz_list_modle.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/modle/settings/setting_model.dart';

part 'settings_state.dart';

class SettingsBloc extends Cubit<SettingsState> {
  late SettingsModel settingsModel;

  SettingsBloc() : super(SettingsLoading());

  static SettingsBloc of(BuildContext context) {
    return BlocProvider.of<SettingsBloc>(context);
  }

  toggleThemeData() async {
    settingsModel = settingsModel.copyWith(isLight: !settingsModel.isLight);
    emit(SettingsLoaded(settingsModel));
    GetStorage().write('isLight', settingsModel.isLight);
  }

  loadSavedTheme() {
    settingsModel = SettingsModel(
      isLight: GetStorage().read('isLight') ?? true,
      fontCode: GetStorage().read('fontCode') ?? 2,
      fontSize: GetStorage().read('fontSize') ?? 20,
      lastSurahOffset: GetStorage().read('settingsModel.lastSurahOffset') ?? 0.0,
      lastJuzOffset: GetStorage().read('settingsModel.lastJuzOffset') ?? 0.0,
      lastSurah: GetStorage().read('settingsModel.lastSurah') != null ? SurahList.fromJson(GetStorage().read('settingsModel.lastSurah')) : null,
      lastJuz: GetStorage().read('settingsModel.lastJuz') != null ? JuzList.fromJson(GetStorage().read('settingsModel.lastJuz')) : null,
    );
    emit(SettingsLoaded(settingsModel));
  }

  increaseFontSize() {
    settingsModel = settingsModel.copyWith(fontSize: settingsModel.fontSize + 1);
    emit(SettingsLoaded(settingsModel));
    GetStorage().write('fontSize', settingsModel.fontSize);
  }

  decreaseFontSize() {
    settingsModel = settingsModel.copyWith(fontSize: settingsModel.fontSize - 1);
    emit(SettingsLoaded(settingsModel));
    GetStorage().write('fontSize', settingsModel.fontSize);
  }

  updateFont() async {
    if (settingsModel.fontCode < 6) {
      settingsModel = settingsModel.copyWith(fontCode: (settingsModel.fontCode + 1));
    } else {
      settingsModel = settingsModel.copyWith(fontCode: 1);
    }
    emit(SettingsLoaded(settingsModel));
    GetStorage().write('fontCode', settingsModel.fontCode);
  }

  saveLastRead({required double lastOffset, required BuildContext context}) async {
    final viewBloc = context.read<BuildViewBloc>();

    if (viewBloc.readQuranFullDetails.juzList != null) {
      settingsModel = settingsModel.copyWith(lastJuzOffset: lastOffset, lastJuz: viewBloc.selectedJuzList);
      emit(SettingsLoaded(settingsModel));

      GetStorage().write('settingsModel.lastJuzOffset', lastOffset);
      GetStorage().write('settingsModel.lastJuz', viewBloc.selectedJuzList!.toJson());
    } else {
      settingsModel = settingsModel.copyWith(lastSurahOffset: lastOffset, lastSurah: viewBloc.selectedSurahList);
      emit(SettingsLoaded(settingsModel));

      GetStorage().write('settingsModel.lastSurahOffset', lastOffset);
      GetStorage().write('settingsModel.lastSurah', viewBloc.selectedSurahList!.toJson());
    }
  }
}
