import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_bloc.dart';
import 'package:m3allah/blocs/seb7a/seb7a_counter_event.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/seb7a/digit.dart';
import 'package:m3allah/views/seb7a/seb7a_azkar_sheet.dart';
import 'package:intl/intl.dart' as format;

class Seb7a extends StatelessWidget {
  const Seb7a({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final GetStorage box = GetStorage();

    return BlocBuilder<Seb7aCounterBloc, Seb7aCounterState>(
      buildWhen: (previous, current) => current.selectedZekr != previous.selectedZekr,
        builder: (context, state) {
      final counterBloc = context.read<Seb7aCounterBloc>();
      var formatter = format.NumberFormat('###,000');
      return SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingBtn(
                            onTap: () {
                              Get.bottomSheet(Seb7aListile(azkar: Seb7aAzkar.seb7aZekr), isScrollControlled: true);
                              return true;
                            },
                            sIcon: Icons.edit,
                            eIcon: Icons.edit,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                children: [
                                  Text(
                                    state.selectedZekr.content,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headline5,
                                  ),
                                  const SizedBox(height: 8),
                                  BlocBuilder<Seb7aCounterBloc, Seb7aCounterState>(
                                    builder: (context , state) {
                                      return Text(
                                        'اجمالي هذا الذكر : ${(formatter.format(box.read(state.selectedZekr.id.toString()) ?? 0)).toString()}',
                                        style: TextStyle(fontFamily: 'font3', color: Theme.of(context).iconTheme.color),
                                      );
                                    }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 50),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * .02),
                    BlocBuilder<Seb7aCounterBloc, Seb7aCounterState>(
                      builder: (context , state) {
                        return SizedBox(
                          width: size.height * .8,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Row(
                              children: [
                                Expanded(child: OneDigit(digit: state.counter ~/ 1000)),
                                Expanded(child: OneDigit(digit: (state.counter % 1000) ~/ 100)),
                                Expanded(child: OneDigit(digit: (state.counter % 100) ~/ 10)),
                                Expanded(child: OneDigit(digit: state.counter % 10)),
                              ],
                            ),
                          ),
                        );
                      }
                    ),
                    SizedBox(height: size.height * .02),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: size.height * .4,
                      height: size.height * .4,
                      decoration: BoxDecoration(color: Theme.of(context).iconTheme.color?.withOpacity(.2), shape: BoxShape.circle, boxShadow: kBoxShadow()),
                      child: RawMaterialButton(
                        shape: const StadiumBorder(),
                        onPressed: () => counterBloc.add(Seb7aCounterEvent.increase(seb7aZekr: state.selectedZekr)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: FloatingBtn(
                onTap: () {
                  counterBloc.add(Seb7aCounterEvent.reset(seb7aZekr: state.selectedZekr));
                  return true;
                },
                sIcon: Icons.refresh,
                eIcon: Icons.refresh,
              ),
            ),
          ],
        ),
      );
    });
  }
}
