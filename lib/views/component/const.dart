import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Color lightBack1 = const Color.fromARGB(255, 240, 240, 241);
Color lightBack2 = const Color(0xfff1fafa);
Color lightBack3 = const Color(0xffffffff);
Color lightBack4 = const Color(0xffffffff);
Color lightIcon = const Color(0xff945ecf);
Color lightShadow = Colors.black38;
Color lightText1 = Colors.grey.shade800;
Color lightText2 = Colors.black45;

Color darkBack1 = const Color(0xff191919);
Color darkBack2 = const Color(0xff202121);
Color darkBack3 = const Color(0xff232323);
Color darkBack4 = const Color.fromARGB(255, 38, 40, 41);
Color darkIcon = const Color(0xff5899da);
Color darkShadow = Colors.black;
Color darkText1 = Colors.grey.shade300;
Color darkText2 = Colors.grey.shade500;

class FloatingBtn extends StatelessWidget {
  final bool Function() onTap;
  final bool Function()? onEnd;
  final IconData sIcon, eIcon;
  final AnimateIconController ctrl = AnimateIconController();

  FloatingBtn({Key? key, required this.onTap, required this.sIcon, required this.eIcon, this.onEnd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: kBoxShadow(),
        borderRadius: BorderRadius.circular(50),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: AnimateIcons(
        controller: ctrl,
        startIcon: sIcon,
        endIcon: eIcon,
        size: 22.0,
        onStartIconPress: onTap,
        onEndIconPress: onEnd ?? onTap,
        duration: const Duration(milliseconds: 200),
        endIconColor: Theme.of(context).iconTheme.color,
        startIconColor: Theme.of(context).iconTheme.color,
        clockwise: false,
      ),
    );
  }
}

List<BoxShadow> kBoxShadow() {
  return [
    const BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
  ];
}

class TileModel {
  final String title;
  final String? json;
  final Image? image;

  TileModel({
    required this.title,
    this.image,
    this.json,
  });
}

List<TileModel> kTileList = [
  TileModel(
    title: 'القرآن الكريم',
    image: Image.asset('assets/images/quran.png'),
  ),
  TileModel(title: 'أذكار الصباح', image: Image.asset('assets/images/saba7.png'), json: 'assets/azkar/azkar_saba7.json'),
  TileModel(title: 'اذكار الصلاة', image: Image.asset('assets/images/salat.png'), json: 'assets/azkar/azkar_salat.json'),
  TileModel(title: 'أذكار المساء', image: Image.asset('assets/images/masa.png'), json: 'assets/azkar/azkar_masa.json'),
  TileModel(title: 'الرقية الشرعية', image: Image.asset('assets/images/roqya.png'), json: 'assets/azkar/roqya.json'),
  TileModel(title: 'تسبيح و تهليل', image: Image.asset('assets/images/tsby7.png'), json: 'assets/azkar/tasby7_est8far.json'),
  TileModel(title: 'أدعية للمتوفي', image: Image.asset('assets/images/do3a2.png'), json: 'assets/azkar/motawafy.json'),
  TileModel(title: 'أدعية و أحاديث', json: 'assets/azkar/azkar.json'),
];

isMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < 450;
}

showSnakBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: SizedBox(
        height: 40,
        child: Center(
          child: Text(
            msg,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: Theme.of(context).colorScheme.secondary,
    ),
  );
}

class IndexesOfJuz {
  final int length, start;

  IndexesOfJuz({required this.length, required this.start});
}

class BuildBasmla extends StatelessWidget {
  const BuildBasmla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 15, 40, 30),
      child: SvgPicture.asset(
        'assets/images/start.svg',
        color: Theme.of(context).textTheme.caption!.color,
        height: 80,
      ),
    );
  }
}

class BuildEnd extends StatelessWidget {
  const BuildEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 15, 40, 30),
      child: SvgPicture.asset(
        'assets/images/end.svg',
        color: Theme.of(context).textTheme.caption!.color,
        height: 80,
      ),
    );
  }
}
