import 'package:flutter/material.dart';
import 'package:m3allah/views/component/const.dart';
import 'package:m3allah/views/drawer.dart';

class Landing extends StatefulWidget {
  final Widget child;
  final AnimationController animationController;
  const Landing({Key? key, required this.child, required this.animationController}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> with SingleTickerProviderStateMixin {
  late Animation animation = CurvedAnimation(parent: widget.animationController, curve: Curves.easeOutCubic, reverseCurve: Curves.easeInCubic);
  bool _canBeDragged = false;

  _onDragStart(DragStartDetails details) {
    bool isDragCloseFromRight = widget.animationController.isDismissed && details.globalPosition.dx > 320;
    bool isDragOpenFromLeft = widget.animationController.isCompleted;
    _canBeDragged = isDragCloseFromRight || isDragOpenFromLeft;
  }

  _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / 300;
      widget.animationController.value -= delta;
    }
  }

  _onDragEnd(DragEndDetails details) {
    if (widget.animationController.isDismissed || widget.animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() <= 360.0) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx;
      widget.animationController.fling(velocity: visualVelocity);
    } else if (widget.animationController.value < 0.5) {
      widget.animationController.reverse();
    } else {
      widget.animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragEnd: _onDragEnd,
      onHorizontalDragUpdate: _onDragUpdate,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Theme.of(context).drawerTheme.backgroundColor,
              child: const KDrawer(),
            ),
            AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Transform(
                  transform: Matrix4.identity()
                    ..translate((-animation.value * size.width * .75), (animation.value * size.height * .05))
                    ..scale(1 - (animation.value * .1)),
                  child: IgnorePointer(
                    ignoring: widget.animationController.isCompleted,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(animation.value * 20),
                        boxShadow: kBoxShadow(),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(animation.value * 20),
                        child: child,
                      ),
                    ),
                  ),
                );
              },
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
