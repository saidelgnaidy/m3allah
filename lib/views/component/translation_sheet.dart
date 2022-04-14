import 'package:flutter/material.dart';
import 'package:m3allah/views/component/const.dart';

class Translation extends StatelessWidget {
  final String transAR, transEn, transId;
  const Translation({Key? key, required this.transAR, required this.transEn, required this.transId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              TransTile(trans: transAR, langAr: 'العربية', langEn: 'Arabic'),
              TransTile(trans: transEn, langAr: 'الأنجليزية', langEn: 'English'),
              TransTile(trans: transId, langAr: 'الاندونيسية', langEn: 'Indonesian'),
              const SizedBox(height: 65)
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
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

class TransTile extends StatelessWidget {
  final String langAr, langEn, trans;
  const TransTile({Key? key, required this.langAr, required this.langEn, required this.trans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.background,
        boxShadow: kBoxShadow(),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.background,
              boxShadow: kBoxShadow(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  langAr,
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 18),
                ),
                Text(
                  langEn,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(trans.toString(), textAlign: TextAlign.justify, style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
