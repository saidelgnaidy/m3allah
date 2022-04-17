import 'package:flutter/material.dart';
import 'package:m3allah/views/component/animation.dart';

class CustomTile extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Image? image;

  const CustomTile({Key? key, required this.onPressed, required this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeScale(
      delay: 300,
      scale: .5,
      child: LayoutBuilder(builder: (context, constrains) {
        return RawMaterialButton(
          elevation: 5,
          fillColor: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (image != null)
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: SizedBox(
                        width: constrains.maxHeight > constrains.maxWidth ? constrains.maxWidth * .4 : constrains.maxHeight * .4,
                        height: constrains.maxHeight > constrains.maxWidth ? constrains.maxWidth * .4 : constrains.maxHeight * .4,
                        child: image,
                      ),
                    ),
                  ),
                ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Center(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline5,
                      textScaleFactor: .7,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
