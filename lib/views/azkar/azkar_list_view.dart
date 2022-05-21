import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/azkar/azkar_cubit.dart';
import 'package:m3allah/blocs/azkar/zekr_counter.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/modle/azkar/azkar_model.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/tool_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AzkarListView extends StatelessWidget {
  final List<AzkarList> azkarList;
  const AzkarListView({Key? key, required this.azkarList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      builder: (context, state) {
        return LayoutBuilder(builder: (context, size) {
          return Stack(
            alignment: Alignment.center,
            children: [
              ScrollablePositionedList.builder(
                itemScrollController: AzkarCubit.of(context).itemScrollController,
                itemPositionsListener: AzkarCubit.of(context).itemPositionsListener,
                addAutomaticKeepAlives: true,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(top: 8, bottom: 80),
                itemCount: azkarList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ZekrTile(
                    zekr: azkarList[index],
                    index: index,
                  );
                },
              ),
              AnimatedPositioned(
                left: isMobile(context) ? state.toolBarPos : null,
                bottom: isMobile(context) ? null : state.toolBarPos,
                curve: Curves.easeInOutBack,
                duration: const Duration(milliseconds: 500),
                child: ToolBar(),
              ),
              Positioned(
                bottom: 8,
                width: size.biggest.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (isMobile(context))
                        FloatingBtn(
                          onTap: () {
                            BuildViewBloc.of(context).onPopScope();
                            return true;
                          },
                          eIcon: Icons.arrow_back,
                          sIcon: Icons.arrow_back,
                        ),
                      FloatingBtn(
                        onTap: () {
                          AzkarCubit.of(context).openToolBar();
                          return true;
                        },
                        sIcon: AzkarCubit.of(context).isToolBarOpen() ? Icons.settings : Icons.close,
                        eIcon: AzkarCubit.of(context).isToolBarOpen() ? Icons.settings : Icons.close,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
      },
    );
  }
}

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: RawMaterialButton(
                fillColor: Theme.of(context).colorScheme.surface,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  ZekrCountCubit.of(context).decrease();
                  if (state.count <= 1) {
                    AzkarCubit.of(context).scrollTo(index);
                  }
                },
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
                            height: 32,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    zekr.category,
                                    textAlign: TextAlign.right,
                                    style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 14),
                                  ),
                                  Row(
                                    children: [
                                      BlocBuilder<ZekrCountCubit, ZekrCounterState>(
                                        buildWhen: (previous, current) => previous != current,
                                        builder: (context, state) {
                                          return Text(
                                            state.count.toString(),
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.subtitle1,
                                          );
                                        },
                                      ),
                                      if (state.count <= 0)
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: InkWell(
                                            onTap: () {
                                              ZekrCountCubit.of(context).reset(zekr.count.isNotEmpty ? int.parse(zekr.count) : 1);
                                            },
                                            child: const Icon(Icons.refresh, size: 22),
                                          ),
                                        )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            child: Text(
                              zekr.zekr,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (zekr.reference.isNotEmpty)
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                          child: Text(
                            'المصدر  : ${zekr.reference}',
                            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 11),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
