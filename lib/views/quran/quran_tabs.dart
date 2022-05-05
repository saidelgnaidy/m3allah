import 'package:flutter/material.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';

import 'package:m3allah/views/quran/juz_list_view.dart';
import 'package:m3allah/views/quran/surah_list_view.dart';
import 'package:provider/provider.dart';

class QuranTaps extends StatefulWidget {
  final int? initTap;
  const QuranTaps({Key? key, this.initTap}) : super(key: key);

  @override
  _QuranTapsState createState() => _QuranTapsState();
}

class _QuranTapsState extends State<QuranTaps> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this, initialIndex: widget.initTap ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLight = context.read<SettingsBloc>().settingsModel.isLight;
    final double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            controller: tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              SurahListView(),
              JuzListView(),
            ],
          ),
        ),
        SizedBox(
          width: w,
          height: 35,
          child: TabBar(
            controller: tabController,
            isScrollable: false,
            labelStyle: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 19),
            labelColor: isLight ? Colors.black : Colors.white,
            unselectedLabelStyle: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 19),
            unselectedLabelColor: Colors.grey[500],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 1, color: isLight ? Colors.black : Colors.white),
              insets: const EdgeInsets.symmetric(horizontal: 30.0),
            ),
            tabs: const [
              Text('السور', textAlign: TextAlign.center),
              Text('الأجزاء', textAlign: TextAlign.center),
            ],
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
