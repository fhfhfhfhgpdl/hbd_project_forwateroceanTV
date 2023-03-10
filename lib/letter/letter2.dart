import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LetterT extends StatefulWidget {
  const LetterT({Key? key}) : super(key: key);

  @override
  State<LetterT> createState() => _LetterTState();
}

class _LetterTState extends State<LetterT> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.8,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25.0,
            fontFamily: 'PC',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('혹시 말이 너무 청산유수라고 느꼈니?', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('정답이야!', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('사실 선행되었던 두개의 편지는 Chat GPT가 써줬어.\nDB시간인가 빅데시간을 활용해 편지를 쓰고 있거든.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('네 생일에 맞춰서 구글 플레이스토어에 올리고 싶었는데\n편지 내용이 죽어도 생각이 안나더라 ㅋㅋ', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('그래서 현대 문명의 힘을 좀 빌려봤어.\n그래도 내 마음하고 비슷하게 쓴거 알지?', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('사실 나는 귀찮아서 제대로 안읽어봤어.\n문맥이 이상해도 좀 이해해라!\n코딩보다 내용 짜내기가 어렵다.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('Chat GPT 별로 안좋아하는데 지금 써보니까 좋은 점도 있는듯!\n아무튼 생일 축하해!', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('-너의 친구 박은서가\n\n이 화면을 마지막으로 한번 더 누르면 선택지 화면으로 넘어가!', speed: const Duration(milliseconds: 100)),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 1500),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            onTap: () {
              print("Tap Event");
            },
            onFinished: (){
              Get.toNamed('/Choose');
            },
          ),
        ),
      ),
    );
  }
}
