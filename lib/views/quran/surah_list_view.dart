import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/search/search_cubit.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';
import 'package:m3allah/views/component/continue_reading_btn.dart';
import 'package:m3allah/views/quran/searching.dart';

class SurahListView extends StatelessWidget {
  const SurahListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = SettingsBloc.of(context);

    return BlocProvider(
      create: (context) => SearchCubit(context.read<BuildViewBloc>().surahList),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return Column(
            children: [
              if (settings.settingsModel.lastSurah != null)
                ContinueReading(
                  onPresed: () {
                    BuildViewBloc.of(context).getFullSurah(settings.settingsModel.lastSurah!);
                  },
                  name: settings.settingsModel.lastSurah!.titleAr.toString(),
                ),
              Expanded(
                child: ListView.separated(
                  itemCount: state.listOfSurah.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SurahTile(
                      surah: state.listOfSurah[index],
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
              const SearchSurah()
            ],
          );
        },
      ),
    );
  }
}

class SurahTile extends StatelessWidget {
  final SurahList surah;

  const SurahTile({Key? key, required this.surah}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLight = SettingsBloc.of(context).settingsModel.isLight;
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
