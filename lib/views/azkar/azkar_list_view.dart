import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/azkar/azkar_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/modle/azkar/azkar_model.dart';
import 'package:m3allah/views/azkar/zekr_tile.dart';
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
                        sIcon: AzkarCubit.of(context).isToolBarOpen ? Icons.settings : Icons.close,
                        eIcon: AzkarCubit.of(context).isToolBarOpen ? Icons.settings : Icons.close,
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
