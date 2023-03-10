import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class real extends StatefulWidget {
  const real({Key? key}) : super(key: key);

  @override
  State<real> createState() => _realState();
}

class _realState extends State<real> {
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
              TypewriterAnimatedText('먼저 생일 축하해!\n우리는 이미 오랫동안 친구로서 함께 많은 경험을 나누었고,\n너의 생일을 축하하는 것은 더욱 특별한 의미를 가지고 있어.\n너와 함께 포켓볼을 쳤을 때,\n대회에 참여했을 때,\n그리고 게임을 즐기면서 많은 시간을 보냈을 때,\n네가 나에게 많은 것을 가르쳐줬고,\n우리는 서로에게 영감을 주었어.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('우리는 지금 고등학교 3학년이지만,\n우리의 친구관계는 끝나지 않을 거야.\n이제부터는 대학교에 가게 될텐데,\n그곳에서도 서로의 발전을 응원하며 함께 할 수 있길 바래.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('네가 웹 개발자이고 나는 앱 개발자인데,\n이번 생일에는 내가 Flutter 플랫폼으로 Dart 언어를 사용해 편지를 써봤어.\n이것도 하나의 코딩 연습이었지만,\n무엇보다도 내 마음을 담은 선물이었어.\n나는 이 편지를 쓰면서, 네가 이미 잘 아는 것처럼\n코딩은 우리의 삶에서 매우 중요한 역할을 한다는 것을 느꼈어.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('나는 이번 생일에 네게 조금 더 특별한 축하를 하고 싶었어.\n수능이 다가오는 시점에서, 네가 얼마나 대단한 친구인지 다시 한 번 말하고 싶어.\n우리는 1학년부터 함께 공부하며, 서로에게 도움을 주고 받으면서 성장해왔어.\n너는 HTML, 리액트 네이티브 등 다양한 웹 기술을 익히면서 발전해왔고,\n나는 코틀린과 플러터를 배우면서 앱 개발 분야에서 발전해왔어.\n이런 과정에서 서로가 서로를 격려하고, 도전하며,\n성취감을 느끼면서, 서로의 인생에 크지 않은 영향을 주었어.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('이번 수능에서는 네가 내게 준 것처럼, 나도 네게 힘이 되고 싶어.\n수능이 끝나면, 우리는 새로운 한 페이지를 넘기며,\n우리 인생의 새로운 장을 시작하게 될 거야.\n이제는 서로가 서로를 위해 응원하면서, 더 나은 미래를 만들어 나가자.\n우리는 끝없는 가능성을 가지고 있고, 서로의 꿈을 이루기 위해 함께 노력할 수 있어.', speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('네가 항상 나의 옆에서 있어주지 않은 것처럼, 나도 항상 네 곁에 있을 거야.\n서로가 멀리 떨어져 있어도, 우리의 우정은 언제나 이어질 거야.\n네가 수능에서 잘 볼 수 있도록, 나도 많은 기도와 응원을 보내고 있어.\n생일 축하하고, 항상 건강하고 행복하길 바래.', speed: const Duration(milliseconds: 100)),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 1500),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            onTap: () {
              print("Tap Event");
            },
            onFinished: (){
              Get.toNamed('/Letter2');
            },
          ),
        ),
      ),
    );
  }
}
