// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:m3allah/views/seb7a/digit.dart';

class ClockStack extends StatefulWidget {
  final HandTurns handTurns;
  const ClockStack({Key? key, required this.handTurns}) : super(key: key);

  @override
  State<ClockStack> createState() => _ClockStackState();
}

class _ClockStackState extends State<ClockStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.1), blurRadius: 1, offset: Offset(0, 1)),
            ],
          ),
        ),
        RotatedHand(handTurn: widget.handTurns.hand1),
        RotatedHand(handTurn: widget.handTurns.hand2),
        AnimatedOpacity(
          opacity: widget.handTurns.hand1 == .625 ? 0 : 1,
          duration: Duration(milliseconds: 500),
          curve: Curves.decelerate,
          child: Container(
            width: MediaQuery.of(context).size.width * .5 / 80,
            height: MediaQuery.of(context).size.width * .5 / 80,
            decoration: BoxDecoration(
              color: Theme.of(context).brightness.index == 1 ? Colors.black : Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

class RotatedHand extends StatelessWidget {
  final double handTurn;
  const RotatedHand({Key? key, required this.handTurn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      duration: Duration(milliseconds: 500),
      curve: Curves.decelerate,
      turns: handTurn,
      child: AnimatedOpacity(
        opacity: handTurn == .625 ? 0 : 1,
        curve: Curves.decelerate,
        duration: Duration(milliseconds: 500),
        child: Container(
          width: MediaQuery.of(context).size.width * .5 / 80,
          height: MediaQuery.of(context).size.width * .5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Theme.of(context).brightness.index == 1 ? Colors.black : Colors.white, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [.5, 0],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
