import 'package:flutter/material.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/views/component/animation.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';
import 'package:m3allah/views/component/continue_reading_btn.dart';
import 'package:provider/provider.dart';

class SurahListView extends StatelessWidget {
  const SurahListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final surahList = context.read<BuildViewBloc>().surahList;
    final settings = context.read<SettingsBloc>();

    return Column(
      children: [
        settings.settingsModel.lastSurah == null
            ? const SizedBox(height: 5)
            : ContinueReading(
                onPresed: () {
                  context.read<BuildViewBloc>().getFullSurah(settings.settingsModel.lastSurah!);
                },
                name: settings.settingsModel.lastSurah!.titleAr.toString(),
              ),
        Expanded(
          child: ListView.separated(
            itemCount: surahList.length,
            physics: const BouncingScrollPhysics(),

            itemBuilder: (context, index) {
              return FadeScale(
                delay: index < 15 ? index*30 : 30,
                child: SurahTile(
                  surah: surahList[index],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(height: .5, thickness: 1),
              );
            },
          ),
        ),
      ],
    );
  }
}

class SurahTile extends StatelessWidget {
  final SurahList surah;

  const SurahTile({Key? key, required this.surah}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLight = context.read<SettingsBloc>().settingsModel.isLight;
    return ListTile(
      onTap: () {
        context.read<BuildViewBloc>().getFullSurah(surah);
      },
      title: Text(
        surah.titleAr,
        style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 18),
        textAlign: TextAlign.right,
      ),
      leading: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/index${!isLight}.png'),
          ),
        ),
        child: Center(
          child: Text(
            "${int.parse(surah.index)}",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 13),
          ),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            surah.place == 'Mecca' ? "مكية" : "مدنية",
            textAlign: TextAlign.left,
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 20,
            height: 20,
            child: Image.asset(
              'assets/images/${surah.place}.png',
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          const Text('عدد الآيات ', textAlign: TextAlign.right),
          Text(
            '{ ${surah.count} }',
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10),
          ),
        ],
      ),
      horizontalTitleGap: 0,
      dense: true,
    );
  }
}
