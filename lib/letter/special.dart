
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Special extends StatefulWidget {
  const Special({Key? key}) : super(key: key);

  @override
  State<Special> createState() => _SpecialState();

}

class _SpecialState extends State<Special> {
  final List<String> imgs = <String>[
    'scr/img/profile.jpg',
    'scr/img/사물 물바다티비와 김호영.jpg',
    'scr/img/이게 왜있냐.jpg',
    'scr/img/자격증 단체 말린생선 물바다.jpg',
    'scr/img/자격증 잔류 생선 물바다2.jpg',
    'scr/img/잔류단체.jpg',
    'scr/img/젠링 노가다의 현장.jpg',
    'scr/img/젠링 연출된 상품구성.jpg',
    'scr/img/젠링 연출된 칠판.jpg',
    'scr/img/젠링 이젠 없는 맥북.jpg',
    'scr/img/젠링 칠판 그림.jpg',
    'scr/img/젠링 카드샷.jpg',
    'scr/img/젠링 행정실 단체.jpg',
    'scr/img/졌는데 혼자 안꿇는 물바다티비.jpg',
    'scr/img/체대 폰하는 물바다.jpg',
    'scr/img/체육대회 뿔 물바다.jpg',
    'scr/img/티비로 즐겨요 물바다티비1.jpg',
    'scr/img/티비로 즐겨요 물바다티비2.jpg',
    'scr/img/현체 피방 단체 항공샷.webp',
    'scr/img/현체 피방 정면 단체.webp'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){Get.toNamed('/Choose'
          );},
          backgroundColor: Colors.cyan,
          child: const Icon(Icons.navigate_before),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(imgs[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
