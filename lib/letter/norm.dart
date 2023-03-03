import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Norm extends StatefulWidget {
  const Norm({Key? key}) : super(key: key);

  @override
  State<Norm> createState() => _NormState();
}

class _NormState extends State<Norm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 20.0, height: 100.0),
          const Text(
            '안녕!',
            style: TextStyle(fontSize: 43.0),
          ),
          const SizedBox(width: 20.0, height: 100.0),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 40.0,
              fontFamily: 'PCP',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('전해성'),
                RotateAnimatedText('물바다tv'),
                RotateAnimatedText('/TODO'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ],
      ),
    );
  }
}
