import 'dart:html';

import 'package:flutter/material.dart';

class Special extends StatefulWidget {
  const Special({Key? key}) : super(key: key);

  @override
  State<Special> createState() => _SpecialState();

}

class _SpecialState extends State<Special> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
