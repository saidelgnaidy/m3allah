import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m3allah/blocs/azkar/azkar_cubit.dart';
import 'package:m3allah/blocs/bookmarks/bookmark_bloc.dart';
import 'package:m3allah/blocs/notifications_api.dart';
import 'package:m3allah/blocs/read_quran/read_quran_cubit.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_bloc.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/postes/state_events.dart';
import 'package:m3allah/blocs/postes/postes_bloc.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/views/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    NotificationCtrl.initNotification();
    NotificationCtrl.initWorkMan();
    await Firebase.initializeApp();
  }
  if (Platform.isIOS) {
    await Firebase.initializeApp();
  }
  await GetStorage.init();
  runApp(const M3Allah());
}

class M3Allah extends StatefulWidget {
  const M3Allah({Key? key}) : super(key: key);

  @override
  State<M3Allah> createState() => _M3AllahState();
}

class _M3AllahState extends State<M3Allah> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SettingsBloc()..loadSavedTheme()),
          BlocProvider(create: (context) => BuildViewBloc(this)..getQuranLists()),
          BlocProvider(create: (context) => Seb7aCounterBloc()),
          BlocProvider(create: (context) => ReadQuranCubit()),
          BlocProvider(create: (context) => AzkarCubit()),
          BlocProvider(create: (context) => BookmarksBloc()..getBookmarks()),
          BlocProvider(create: (context) => PostesFetchingBloc()..add(const FetchPostes())),
        ],
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: state.getThemeData,
              locale: const Locale('ar'),
              title: '???? ????????',
              home: AnnotatedRegion<SystemUiOverlayStyle>(
                value: state.getThemeData!.appBarTheme.systemOverlayStyle!,
                child: const SafeArea(
                  child: HomeScreen(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
