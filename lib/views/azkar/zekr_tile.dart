import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:m3allah/blocs/azkar/azkar_cubit.dart';
import 'package:m3allah/blocs/azkar/zekr_counter.dart';
import 'package:m3allah/blocs/bookmarks/bookmark_bloc.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';
import 'package:m3allah/modle/azkar/azkar_model.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/my_icon_btn.dart';
import 'package:share_plus/share_plus.dart';

class ZekrTile extends StatelessWidget {
  final AzkarList zekr;
  final int index;
  const ZekrTile({Key? key, required this.zekr, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ZekrCountCubit(zekr.count.isNotEmpty ? int.parse(zekr.count) : 1),
      child: BlocBuilder<ZekrCountCubit, ZekrCounterState>(
        buildWhen: (previous, current) => (current.count <= 1 || current.count == (zekr.count.isNotEmpty ? int.parse(zekr.count) : 1)),
        builder: (context, state) {
          return Opacity(
            opacity: state.count == 0 ? 0.6 : 1.0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.surface,
                boxShadow: kBoxShadow(),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                      color: Theme.of(context).colorScheme.surface,
                      boxShadow: kBoxShadow(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      zekr.category,
                                      textAlign: TextAlign.right,
                                      style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 14),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Row(
                                    children: [
                                      if (state.count <= 0)
                                        SizedBox(
                                          width: 25,
                                          child: InkWell(
                                            onTap: () {
                                              ZekrCountCubit.of(context).reset(zekr.count.isNotEmpty ? int.parse(zekr.count) : 1);
                                            },
                                            child: const Icon(Icons.refresh, size: 20),
                                          ),
                                        )
                                      else
                                        const SizedBox(width: 24),
                                      SizedBox(
                                        width: 25,
                                        child: BlocBuilder<ZekrCountCubit, ZekrCounterState>(
                                          buildWhen: (previous, current) => previous != current,
                                          builder: (context, state) {
                                            return Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text(
                                                  state.count.toString(),
                                                  style: Theme.of(context).textTheme.subtitle1,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<BuildViewBloc, BuildViewState>(
                    buildWhen: (previous, current) => false,
                    builder: (context, view) {
                      return RawMaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          ZekrCountCubit.of(context).decrease();
                          if (state.count <= 1) {
                            view.mapOrNull(
                              azkar: (value) => AzkarCubit.of(context).scrollTo(index),
                              bookmarks: (value) => BookmarksBloc.of(context).scrollTo(index),
                            );
                          }
                        },
                        child: Column(
                          children: [
                            //Zekr body
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                    child: Text(
                                      zekr.zekr,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.caption,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //Bookmarks & Share & sorce
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (zekr.reference.isNotEmpty)
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                      child: Text(
                                        'المصدر  : ${zekr.reference}',
                                        style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 11),
                                      ),
                                    ),
                                  )
                                else
                                  const SizedBox(width: 0),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5, left: 10),
                                  child: SizedBox(
                                    width: 60,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: KIconBtn(
                                            iconData: Icons.share,
                                            onTap: () {
                                              Share.share(zekr.zekr);
                                            },
                                          ),
                                        ),
                                        BlocBuilder<BookmarksBloc, BookmarksState>(
                                          builder: (context, state) {
                                            return Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                if (state.bookmarkList.contains(zekr))
                                                  Positioned(
                                                    top: -13,
                                                    child: Lottie.asset(
                                                      'assets/images/bookmark.json',
                                                      width: 45,
                                                      animate: state.bookmarkList.contains(zekr),
                                                      fit: BoxFit.cover,
                                                      repeat: false,
                                                    ),
                                                  ),
                                                KIconBtn(
                                                  iconData: Icons.favorite_border_rounded,
                                                  color: state.bookmarkList.contains(zekr) ? const Color(0xffff0303) : null,
                                                  onTap: () {
                                                    BookmarksBloc.of(context).add(zekr);
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
