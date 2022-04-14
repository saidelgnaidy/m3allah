import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m3allah/blocs/notifications_api.dart';
import 'package:m3allah/blocs/quran_player/quran_player_bloc.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_bloc.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_event.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/views/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid || Platform.isIOS) {
    NotificationCtrl.initNotifications();
    NotificationCtrl.initWorkMan();
    await Firebase.initializeApp();
  }
  await GetStorage.init();

  runApp(const M3Allah());
}

class M3Allah extends StatelessWidget {
  const M3Allah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SettingsBloc()..loadSavedTheme()),
          BlocProvider(create: (context) => BuildViewBloc()..getQuranLists()),
          BlocProvider(create: (context) => Seb7aCounterBloc()..add(const LoadingSeb7a())),
          BlocProvider(create: (context) => QuranPlayerBloc()),
        ],
        child: BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: state.getThemeData(),
            themeMode: ThemeMode.dark,
            locale: const Locale('ar', ''),
            localeResolutionCallback: (local, list) => list.first,
            supportedLocales: const [
              Locale('ar', ''),
            ],
            title: 'مع الله',
            home: const HomeScreen(),
          );
        }),
      ),
    );
  }
}
