import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final Color color ;
  final Function() onPressed ;

  const MenuIcon({Key? key , required this.color, required this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: const CircleBorder(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 2,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: color ,
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                height: 2,
                width: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: color ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}