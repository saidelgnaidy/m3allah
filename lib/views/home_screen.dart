import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/drawer_icon.dart';
import 'package:flutter/material.dart';
import 'package:m3allah/views/azkar/azkar_list_view.dart';
import 'package:m3allah/views/component/theme_toggle_btn.dart';
import 'package:m3allah/views/drawer.dart';
import 'package:m3allah/views/my_drawer.dart';
import 'package:m3allah/views/quran/quran_tabs.dart';
import 'package:m3allah/views/quran/read_listen_tap.dart';
import 'package:m3allah/views/seb7a/seb7a.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildView(BuildViewState state) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kBoxShadow(),
        color: Theme.of(context).colorScheme.background,
      ),
      child: state.map(
        initial: (init) => const Center(child: LinearProgressIndicator()),
        quran: (quran) => QuranTaps(initTap: quran.initTap),
        azkar: (azkar) =>  AzkarListView(azkarList: azkar.list),
        readSurah: (value) => const ReadOrListen(),
        sebha: (sebha) => const Seb7a(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final BuildViewBloc viewBloc = BlocProvider.of<BuildViewBloc>(context);

    if (MediaQuery.of(context).orientation.index == 0) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }

    return BlocBuilder<BuildViewBloc, BuildViewState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () {
            return context.read<BuildViewBloc>().onPopScope();
          },
          child: Scaffold(
            backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
            appBar: !isMobile(context)
                ? null
                : PreferredSize(
                    preferredSize: const Size.fromHeight(45),
                    child: AppBar(
                      title: Text('مع الله', style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),
                      centerTitle: true,
                      leading: MenuIcon(
                        color: Theme.of(context).iconTheme.color!,
                        onPressed: () {
                          viewBloc.toggleDrawer();
                        },
                      ),
                      actions: [
                        ThemeToggleBtn(),
                      ],
                    ),
                  ),
            body: isMobile(context)
                ? Landing(
                    animationController: viewBloc.animationController,
                    child: _buildView(state),
                  )
                : Row(
                    children: [
                      const KDrawer(),
                      Expanded(
                        child: SafeArea(
                          child: _buildView(state),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
