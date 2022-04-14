import 'package:flutter/material.dart';
import 'package:m3allah/views/seb7a/clock_stack.dart';

class OneDigit extends StatelessWidget {
  final int digit;
  const OneDigit({Key? key, required this.digit}) : super(key: key);

  HandTurns calcAngle({required int index}) {
    if (digit == 0) {
      if (index == 1 || index == 2 || index == 21 || index == 22) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 0 || index == 5) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 20 || index == 17) {
        return HandTurns(hand1: 0, hand2: .25);
      } else if (index == 23 || index == 18) {
        return HandTurns(hand1: 0, hand2: .75);
      } else if (index == 3 || index == 6) {
        return HandTurns(hand1: .5, hand2: .75);
      } else {
        return HandTurns(hand1: 0, hand2: .5);
      }
    } else if (digit == 1) {
      if (index == 0 || index == 16) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 1 || index == 21 || index == 22) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 2 || index == 5 || index == 19) {
        return HandTurns(hand1: .5, hand2: .75);
      } else if (index == 6 || index == 9 || index == 10 || index == 13 || index == 14) {
        return HandTurns(hand1: .0, hand2: .5);
      } else if (index == 17 || index == 23) {
        return HandTurns(hand1: .0, hand2: .75);
      } else if (index == 18 || index == 20 || index == 4) {
        return HandTurns(hand1: .0, hand2: .25);
      } else {
        return HandTurns(hand1: .625, hand2: .625);
      }
    } else if (digit == 2) {
      if (index == 0 || index == 13 || index == 8) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 4 || index == 17 || index == 20) {
        return HandTurns(hand1: .0, hand2: .25);
      } else if (index == 7 || index == 11 || index == 12 || index == 16) {
        return HandTurns(hand1: .0, hand2: .5);
      } else if (index == 10 || index == 15 || index == 23) {
        return HandTurns(hand1: .0, hand2: .75);
      } else if (index == 1 || index == 2 || index == 5 || index == 9 || index == 14 || index == 18 || index == 22 || index == 21) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 3 || index == 6 || index == 19) {
        return HandTurns(hand1: .5, hand2: .75);
      } else {
        return HandTurns(hand1: .625, hand2: .625);
      }
    } else if (digit == 3) {
      if (index == 0 || index == 8 || index == 16) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 1 || index == 2 || index == 5 || index == 9 || index == 13 || index == 21 || index == 22 || index == 17) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 7 || index == 11 || index == 15 || index == 19) {
        return HandTurns(hand1: .0, hand2: .5);
      } else if (index == 4 || index == 20 || index == 12) {
        return HandTurns(hand1: .0, hand2: .25);
      } else if (index == 10 || index == 18 || index == 23) {
        return HandTurns(hand1: .0, hand2: .75);
      } else if (index == 3 || index == 6 || index == 14) {
        return HandTurns(hand1: .5, hand2: .75);
      } else {
        return HandTurns(hand1: .625, hand2: .625);
      }
    } else if (digit == 4) {
      if (index == 0 || index == 2) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 4 || index == 5 || index == 6 || index == 7 || index == 8 || index == 11 || index == 15 || index == 18 || index == 19) {
        return HandTurns(hand1: 0, hand2: .5);
      } else if (index == 1 || index == 3 || index == 14) {
        return HandTurns(hand1: .5, hand2: .75);
      } else if (index == 10 || index == 23) {
        return HandTurns(hand1: 0, hand2: .75);
      } else if (index == 9 || index == 22 || index == 12) {
        return HandTurns(hand1: .0, hand2: .25);
      } else if (index == 13) {
        return HandTurns(hand1: .25, hand2: .75);
      } else {
        return HandTurns(hand1: .625, hand2: .625);
      }
    } else if (digit == 5) {
      if (index == 1 || index == 2 || index == 6 || index == 10 || index == 13 || index == 17 || index == 21 || index == 22) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 4 || index == 8 || index == 15 || index == 19) {
        return HandTurns(hand1: .0, hand2: .5);
      } else if (index == 18 || index == 23 || index == 7) {
        return HandTurns(hand1: 0, hand2: .75);
      } else if (index == 11 || index == 3 || index == 14) {
        return HandTurns(hand1: .5, hand2: .75);
      } else if (index == 12 || index == 20 || index == 9) {
        return HandTurns(hand1: .0, hand2: .25);
      } else if (index == 0 || index == 16 || index == 5) {
        return HandTurns(hand1: .25, hand2: .5);
      } else {
        return HandTurns(hand1: .625, hand2: .625);
      }
    } else if (digit == 6) {
      if (index == 1 || index == 2 || index == 6 || index == 21 || index == 22 || index == 10) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 9 || index == 17 || index == 20) {
        return HandTurns(hand1: .0, hand2: .25);
      } else if (index == 0 || index == 5 || index == 13) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 7 || index == 18 || index == 23) {
        return HandTurns(hand1: 0, hand2: .75);
      } else if (index == 14 || index == 3 || index == 11) {
        return HandTurns(hand1: .5, hand2: .75);
      } else if (index == 4 || index == 8 || index == 12 || index == 15 || index == 16 || index == 19) {
        return HandTurns(hand1: .0, hand2: .5);
      } else {
        return HandTurns(hand1: .625, hand2: .625);
      }
    } else if (digit == 7) {
      if (index == 7 || index == 10 || index == 11 || index == 14 || index == 15 || index == 18 || index == 19) {
        return HandTurns(hand1: .0, hand2: .5);
      } else if (index == 1 || index == 2 || index == 5) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 0) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 4 || index == 22) {
        return HandTurns(hand1: 0, hand2: .25);
      } else if (index == 6 || index == 3) {
        return HandTurns(hand1: .5, hand2: .75);
      } else if (index == 23) {
        return HandTurns(hand1: 0, hand2: .75);
      } else {
        return HandTurns(hand1: .625, hand2: .625);
      }
    } else if (digit == 8) {
      if (index == 1 || index == 2 || index == 21 || index == 22) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 0 || index == 5 || index == 13) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 20 || index == 17 || index == 9) {
        return HandTurns(hand1: 0, hand2: .25);
      } else if (index == 23 || index == 18 || index == 10) {
        return HandTurns(hand1: 0, hand2: .75);
      } else if (index == 14 || index == 6 || index == 3) {
        return HandTurns(hand1: .5, hand2: .75);
      } else {
        return HandTurns(hand1: 0, hand2: .5);
      }
    } else if (digit == 9) {
      if (index == 4 || index == 7 || index == 8 || index == 11 || index == 15 || index == 19) {
        return HandTurns(hand1: .0, hand2: .5);
      } else if (index == 1 || index == 2 || index == 13 || index == 21 || index == 22 || index == 17) {
        return HandTurns(hand1: .25, hand2: .75);
      } else if (index == 0 || index == 16 || index == 5) {
        return HandTurns(hand1: .25, hand2: .5);
      } else if (index == 3 || index == 6 || index == 14) {
        return HandTurns(hand1: .5, hand2: .75);
      } else if (index == 12 || index == 9 || index == 20) {
        return HandTurns(hand1: 0, hand2: .25);
      } else if (index == 10 || index == 18 || index == 32) {
        return HandTurns(hand1: 0, hand2: .75);
      } else {
        return HandTurns(hand1: 0, hand2: .75);
      }
    } else {
      return HandTurns(hand1: .625, hand2: .625);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      padding: const EdgeInsets.symmetric(vertical: 10),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 24,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ClockStack(handTurns: calcAngle(index: index));
      },
    );
  }
}

class HandTurns {
  final double hand1, hand2;
  HandTurns({required this.hand1, required this.hand2});
}
