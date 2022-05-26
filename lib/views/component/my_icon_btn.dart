import 'package:flutter/material.dart';

class KIconBtn extends StatelessWidget {
  const KIconBtn({Key? key, required this.iconData, required this.onTap, this.color}) : super(key: key);

  final IconData iconData;
  final Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        iconData,
        size: 20,
        color: color ?? Theme.of(context).textTheme.headline2?.color,
      ),
    );
  }
}
