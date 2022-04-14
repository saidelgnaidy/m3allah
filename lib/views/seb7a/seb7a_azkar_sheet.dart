import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_bloc.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_event.dart';
import 'package:m3allah/modle/azkar/seb7a_model.dart';
import 'package:m3allah/views/component/const.dart';

class Seb7aListile extends StatelessWidget {
  final List<Seb7aZekr> azkar;
  const Seb7aListile({Key? key, required this.azkar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final seb7aBloc = context.read<Seb7aCounterBloc>();
    return Stack(
      children: [
        ClipRRect(
          child: Container(
            height: MediaQuery.of(context).size.height * .7,
            color: Theme.of(context).colorScheme.background,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 80),
              child: Column(
                children: [
                  ...azkar.map(
                    (zekr) {
                      return InkWell(
                        onTap: () {
                          seb7aBloc.add(Seb7aCounterEvent.selecteZekr(seb7aZekr: zekr));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 1),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.surface,
                            boxShadow: kBoxShadow(),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                                  child: Text(
                                    zekr.description,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 15, fontFamily: 'font2'),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                      child: Text(
                                        zekr.content,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.caption,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 15,
          bottom: 15,
          child: FloatingBtn(
            eIcon: Icons.arrow_back,
            sIcon: Icons.arrow_back,
            onTap: () {
              Navigator.pop(context);
              return true;
            },
          ),
        )
      ],
    );
  }
}
