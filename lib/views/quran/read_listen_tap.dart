import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/quran_player/quran_player_bloc.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/views/quran/listen_to_quran.dart';
import 'package:m3allah/views/quran/read_quran.dart';

class ReadOrListen extends StatefulWidget {
  const ReadOrListen({Key? key}) : super(key: key);

  @override
  _ReadOrListenState createState() => _ReadOrListenState();
}

class _ReadOrListenState extends State<ReadOrListen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLight = context.read<SettingsBloc>().settingsModel.isLight;

    if (Platform.isAndroid || Platform.isIOS) {
      return BlocProvider(
        create: (context) => QuranPlayerBloc(),
        child: Column(
          children: [
            if (Platform.isAndroid || Platform.isIOS)
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    ReadQuran(),
                    QuranPlayer(),
                  ],
                ),
              ),
            SizedBox(
              height: 40,
              child: TabBar(
                controller: tabController,
                isScrollable: false,
                physics: const NeverScrollableScrollPhysics(),
                labelColor: Theme.of(context).textTheme.caption?.color,
                unselectedLabelColor: Colors.grey[500],
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 1, color: isLight ? Colors.black : Colors.white),
                  insets: const EdgeInsets.symmetric(horizontal: 30.0),
                ),
                tabs: const [
                  Text('قراءة', textAlign: TextAlign.center),
                  Text('استماع', textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      );
    } else {
      return const ReadQuran();
    }
  }
}
