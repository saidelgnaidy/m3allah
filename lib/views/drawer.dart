import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:m3allah/blocs/notifications_api.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/custom_tile.dart';
import 'package:m3allah/views/component/theme_toggle_btn.dart';

class KDrawer extends StatelessWidget {
  const KDrawer({Key? key}) : super(key: key);
  static const int crossAxisCellCountM = 8;
  static const int crossAxisCellCountD = 5;
  static int mainAxisCellCount = 24;

  @override
  Widget build(BuildContext context) {
    final view = context.read<BuildViewBloc>();
    final size = MediaQuery.of(context).size;

    return Container(
      color: isMobile(context) ? null : Theme.of(context).colorScheme.background,
      width: isMobile(context) ? size.width : 150,
      height: size.height,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: isMobile(context) ? size.height * .05 : 0, left: isMobile(context) ? size.width * .15 + 10 : 10, right: 10),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            if (!isMobile(context))
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.scale(child: ThemeToggleBtn(), scale: 1.2),
                      Text('مع الله', style: Theme.of(context).textTheme.headline5),
                      const SizedBox(width: 40),
                    ],
                  ),
                ),
              ),
            StaggeredGrid.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: isMobile(context) ? crossAxisCellCountM : crossAxisCellCountD,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 3.1 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.toggleDrawer();
                      view.push(const BuildViewState.quran(initTap: 0));
                      NotificationCtrl.sendNotification();
                    },
                    title: kTileList[0].title,
                    image: kTileList[0].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 5 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.getAzkar(kTileList[1].json!);
                    },
                    title: kTileList[1].title,
                    image: kTileList[1].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 4 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.getAzkar(kTileList[2].json!);
                    },
                    title: kTileList[2].title,
                    image: kTileList[2].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 5 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.getAzkar(kTileList[3].json!);
                    },
                    title: kTileList[3].title,
                    image: kTileList[3].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 4 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.getAzkar(kTileList[4].json!);
                    },
                    title: kTileList[4].title,
                    image: kTileList[4].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 3.5 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.getAzkar(kTileList[5].json!);
                    },
                    title: kTileList[5].title,
                    image: kTileList[5].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 3.5 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.getAzkar(kTileList[6].json!);
                    },
                    title: kTileList[6].title,
                    image: kTileList[6].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 2.4 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      view.getAzkar(kTileList[7].json!);
                    },
                    title: kTileList[7].title,
                    image: kTileList[7].image,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                  mainAxisCellCount: isMobile(context) ? 2.4 : mainAxisCellCount / 8,
                  child: CustomTile(
                    onPressed: () {
                      context.read<BuildViewBloc>().push(const BuildViewState.sebha());
                      view.toggleDrawer();
                    },
                    title: 'السبحة',
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * .06),
              child: Center(
                child: Text(
                  'نسألكم الدعاء',
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.purpleAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
