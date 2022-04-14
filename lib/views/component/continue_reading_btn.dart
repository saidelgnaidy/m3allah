import 'package:flutter/material.dart';

class ContinueReading extends StatelessWidget {
  final Function() onPresed;
  final String name;
  const ContinueReading({Key? key, required this.onPresed, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: RawMaterialButton(
          elevation: 5,
          shape: const StadiumBorder(),
          fillColor: Theme.of(context).colorScheme.surface,
          onPressed: onPresed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/quran.png', width: 25, height: 25),
              Text(
                ' اكمل قراءة : ' + name,
                style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 16),
              ),
              const SizedBox(width: 25)
            ],
          ),
        ),
      ),
    );
  }
}
