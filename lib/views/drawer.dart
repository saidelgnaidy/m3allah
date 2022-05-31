import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/custom_tile.dart';
import 'package:m3allah/views/component/theme_toggle_btn.dart';

class KDrawer extends StatelessWidget {
  const KDrawer({Key? key}) : super(key: key);
  static const int crossAxisCellCountM = 10;
  static const int crossAxisCellCountD = 6;
  static const int mainAxisCellCountD = 4;

  @override
  Widget build(BuildContext context) {
    final view = BuildViewBloc.of(context);
    final size = MediaQuery.of(context).size;

    return Container(
      color: isMobile(context) ? null : Theme.of(context).colorScheme.background,
      width: isMobile(context) ? size.width : 160,
      height: size.height,
      child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: isMobile(context) ? size.width * .15 + 12 : 8, right: 12, top: isMobile(context) ? size.height * .05 : 10),
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!isMobile(context))
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.scale(scale: 1.2, child: ThemeToggleBtn()),
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
                    mainAxisCellCount: isMobile(context) ? 4.2 : mainAxisCellCountD,
                    child: CustomTile(
                      onPressed: () {
                        view.push(const BuildViewState.quran(initTap: 0));
                      },
                      title: kTileList[0].title,
                      image: kTileList[0].image,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                    mainAxisCellCount: isMobile(context) ? 5.2 : mainAxisCellCountD,
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
                    mainAxisCellCount: isMobile(context) ? 4.2 : mainAxisCellCountD,
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
                    mainAxisCellCount: isMobile(context) ? 5.2 : mainAxisCellCountD,
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
                    mainAxisCellCount: isMobile(context) ? 4.2 : mainAxisCellCountD,
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
                    mainAxisCellCount: isMobile(context) ? 4 : mainAxisCellCountD,
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
                    mainAxisCellCount: isMobile(context) ? 4 : mainAxisCellCountD,
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
                    mainAxisCellCount: isMobile(context) ? 2.8 : mainAxisCellCountD,
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
                    mainAxisCellCount: isMobile(context) ? 2.8 : mainAxisCellCountD,
                    child: CustomTile(
                      onPressed: () {
                        view.getSeb7a();
                      },
                      title: 'السبحة',
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                    mainAxisCellCount: isMobile(context) ? 2.8 : mainAxisCellCountD,
                    child: RawMaterialButton(
                      elevation: 5,
                      fillColor: Theme.of(context).colorScheme.surface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      onPressed: () {
                        view.push(const BuildViewState.bookmarks());
                      },
                      child: Lottie.asset(
                        'assets/images/bookmark.json',
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: isMobile(context) ? crossAxisCellCountM ~/ 2 : crossAxisCellCountD,
                    mainAxisCellCount: isMobile(context) ? 2.8 : mainAxisCellCountD,
                    child: RawMaterialButton(
                      elevation: 5,
                      fillColor: Theme.of(context).colorScheme.surface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      onPressed: () {
                        view.push(const BuildViewState.videos());
                      },
                      child: const Icon(Icons.video_collection_rounded),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * .1),
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
      ),
    );
  }
}
