import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';

class Norm extends StatefulWidget {
  const Norm({Key? key}) : super(key: key);

  @override
  State<Norm> createState() => _NormState();
}

class _NormState extends State<Norm> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.8,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25.0,
            fontFamily: 'PCP',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('안녕? 물바다TV!\n생일축하해!', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('너와 함께한 모든 순간들이 나에게는 소중한 추억으로 남아 있어.\n우리는 함께 C언어, 파이썬을 공부하며 코딩에 대한 열정을 나눴고,\n이제는 서로 다른 분야에서 코딩을 하고 있지만\n그래도 여전히 친구로서 함께 할 수 있어서 행복해.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('나는 이번 생일에 특별한 편지를 준비해봤어.\nFlutter 플랫폼으로 Dart 언어를 사용하여 나의 마음을 전하고자 했어.\n나와 함께한 모든 순간들을 생각하며 작성한 이 편지가\n너에게 조금이나마 감동을 전해줬으면 좋겠어.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('하지만 이번 생일을 축하하면서 또 하나의 큰 이벤트를 앞두고 있잖아.\n그것은 바로 수능이야.\n우리는 지금까지 열심히 공부해왔고,\n이제는 마무리 단계에 접어들었어.\n그동안 공부한 내용을 최대한 잘 활용해서 좋은 결과를 얻을 수 있도록 응원할게.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('이번 생일을 기념하여,\n우리가 함께 즐기는 게임 오버워치의 한 말을 인용해봤어.\n"우리는 함께할 수록 강해진다" 라는 말이야.\n이 말처럼 우리는 서로의 강점을 살려서 더욱 발전해 나갈 수 있을 거야.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('생일 축하하고, 수능 시험도 화이팅!\n더욱 성장한 모습으로 다시 만날 때를 기대할게.', speed: const Duration(milliseconds: 1000))
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 1500),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            onTap: () {
              print("Tap Event");
            },
            onFinished: (){
              Get.toNamed('/Real');
            },
          ),
        ),
      ),
    );
  }
}
