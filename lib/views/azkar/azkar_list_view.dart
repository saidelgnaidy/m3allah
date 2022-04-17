import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/azkar/azkar_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';

import 'package:m3allah/modle/azkar/azkar_model.dart';
import 'package:m3allah/views/component/animation.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/component/tool_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AzkarListView extends StatelessWidget {
  final List<AzkarList> azkarList;
  const AzkarListView({Key? key , required this.azkarList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      builder: (context, state) {
        final azkarCubit = context.read<AzkarCubit>();
        return Stack(
          alignment: Alignment.center,
          children: [
            ScrollablePositionedList.builder(
              itemScrollController: azkarCubit.itemScrollController,
              itemPositionsListener: azkarCubit.itemPositionsListener,
              addAutomaticKeepAlives: true,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 5),
              itemCount: azkarList.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeX(
                  delay: index < 10 ? index * 25 : 50,
                  child: ZekrTile(
                    zekr: azkarList[index],
                    scrollToNext: () => azkarCubit.scrollTo(index),
                  ),
                );
              },
            ),
            AnimatedPositioned(
              left: isMobile(context) ? azkarCubit.toolBarPos : null,
              bottom: isMobile(context) ? null : azkarCubit.toolBarPos,
              curve: Curves.easeInOutBack,
              duration: const Duration(milliseconds: 500),
              child: ToolBar(),
            ),
            Positioned(
              right: 8,
              bottom: 8,
              child: Column(
                children: [
                  FloatingBtn(
                    onTap: () {
                      azkarCubit.openToolBar();
                      return true;
                    },
                    sIcon: azkarCubit.isToolBarOpen() ? Icons.settings : Icons.close,
                    eIcon: azkarCubit.isToolBarOpen() ? Icons.settings : Icons.close,
                  ),
                  const SizedBox(height: 8),
                  FloatingBtn(
                    onTap: () {
                      context.read<BuildViewBloc>().onPopScope();
                      return true;
                    },
                    eIcon: Icons.arrow_back,
                    sIcon: Icons.arrow_back,
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class ZekrTile extends StatefulWidget {
  final AzkarList zekr;
  final Function scrollToNext;
  const ZekrTile({Key? key, required this.zekr, required this.scrollToNext}) : super(key: key);

  @override
  State<ZekrTile> createState() => _ZekrTileState();
}

class _ZekrTileState extends State<ZekrTile> {
  int _count = 1;
  @override
  void initState() {
    _count = widget.zekr.count.isNotEmpty ? int.parse(widget.zekr.count) : 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _count == 0 ? .6 : 1.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: RawMaterialButton(
          fillColor: Theme.of(context).colorScheme.surface,
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {
            if (_count > 0) {
              setState(() => _count--);
            }
            if (_count == 0) {
              widget.scrollToNext();
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.zekr.category,
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 14),
                          ),
                          Text(_count.toString(), textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle1),
                        ],
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
                        widget.zekr.zekr,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                ],
              ),
              if (widget.zekr.reference.isNotEmpty)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    child: Text(
                      'المصدر  : ' + widget.zekr.reference,
                      style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 11),
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
