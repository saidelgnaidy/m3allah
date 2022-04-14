import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/view_bloc/build_view_cubit.dart';
import 'package:m3allah/blocs/view_bloc/build_view_state.dart';

import 'package:m3allah/views/component/const.dart';

class StoreProgress extends StatelessWidget {
  final Function onSave;
  const StoreProgress({Key? key, required this.onSave}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: BlocBuilder<BuildViewBloc, BuildViewState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            readSurah: () => FloatingBtn(
              sIcon: Icons.book,
              eIcon: Icons.book,
              onTap: () {
                onSave();
                showSnakBar(context, 'تم حفظ التقدم');
                return true;
              },
            ),
          );
        },
      ),
    );
  }
}
