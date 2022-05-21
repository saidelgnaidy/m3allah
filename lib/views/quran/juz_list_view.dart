import 'package:flutter/material.dart';
import 'package:m3allah/blocs/setting_bloc/settings_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/modle/juz_list_modle/juz_list_modle.dart';
import 'package:m3allah/views/component/continue_reading_btn.dart';

class JuzListView extends StatelessWidget {
  const JuzListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewBloc = BuildViewBloc.of(context);
    final settings = SettingsBloc.of(context);

    return Column(
      children: [
        settings.settingsModel.lastJuz != null
            ? ContinueReading(
                onPresed: () {
                  viewBloc.getFullJuz(settings.settingsModel.lastJuz!);
                },
                name: settings.settingsModel.lastJuz!.name.toString(),
              )
            : const SizedBox(),
        Expanded(
          child: ListView.separated(
            itemCount: viewBloc.juzList.length,
            itemBuilder: (context, index) {
              return JuzTile(
                juz: viewBloc.juzList[index],
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

class JuzTile extends StatelessWidget {
  final JuzList juz;

  const JuzTile({Key? key, required this.juz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = SettingsBloc.of(context);
    return ListTile(
      onTap: () {
        BuildViewBloc.of(context).getFullJuz(juz);
      },
      title: Text(
        juz.name,
        style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 18),
        textAlign: TextAlign.right,
      ),
      leading: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/index${!settings.settingsModel.isLight}.png'),
          ),
        ),
        child: Center(
          child: Text(
            "${int.parse(juz.index)}",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 13),
          ),
        ),
      ),
      horizontalTitleGap: 0,
      dense: true,
    );
  }
}
