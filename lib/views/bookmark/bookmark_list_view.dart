import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:m3allah/blocs/bookmarks/bookmark_bloc.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/views/azkar/zekr_tile.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/tool_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BookmalksListView extends StatelessWidget {
  const BookmalksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarksBloc, BookmarksState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, size) {
            return Stack(
              alignment: Alignment.center,
              children: [
                if (state.bookmarkList.isNotEmpty)
                  ScrollablePositionedList.builder(
                    itemScrollController: BookmarksBloc.of(context).itemScrollController,
                    itemPositionsListener: BookmarksBloc.of(context).itemPositionsListener,
                    addAutomaticKeepAlives: true,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 8, bottom: 80),
                    itemCount: state.bookmarkList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ZekrTile(
                        zekr: state.bookmarkList[index],
                        index: index,
                      );
                    },
                  )
                else
                  Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/images/bookmark.json',
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      const Text('ليس لديك مفضلة !'),
                    ],
                  )),
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
                            BookmarksBloc.of(context).openToolBar();
                            return true;
                          },
                          sIcon: BookmarksBloc.of(context).isToolBarOpen ? Icons.settings : Icons.close,
                          eIcon: BookmarksBloc.of(context).isToolBarOpen ? Icons.settings : Icons.close,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
