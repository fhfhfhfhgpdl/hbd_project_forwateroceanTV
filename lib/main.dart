import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbd_hs/choose.dart';
import 'package:hbd_hs/letter/letter2.dart';
import 'package:hbd_hs/letter/norm.dart';
import 'package:hbd_hs/letter/special.dart';
import 'package:hbd_hs/pin.dart';

import 'letter/Real.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/Spec',
      getPages: [
        GetPage(name: '/', page: ()=>const Start()),
        GetPage(name: '/PIN', page: ()=>const Pin()),
        GetPage(name: '/Choose', page: ()=>const Choose()),
        GetPage(name: '/Spec', page: ()=>const Special()),
        GetPage(name: '/Norm', page: ()=>const Norm()),
        GetPage(name: '/Letter2', page: ()=>const LetterT()),
        GetPage(name: '/Real', page: ()=>const real()),
      ],
    );
  }
}


class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PC'),
      home: start()
    );
  }
}

class start extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){Get.toNamed('/Choose'
        );},
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.navigate_before),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('생일 축하해,\n물바다TV!',
              style: TextStyle(fontFamily: 'PC', color: Colors.teal,
                  fontSize: 40, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Image.asset('scr/img/profile.jpg',
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.265,
                fit: BoxFit.cover,),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            TextButton(onPressed: (){Get.toNamed('/PIN');},
                child: Text('Go to Next',
                  style: TextStyle(fontFamily: 'PCP', fontWeight: FontWeight.w600,color: Colors.teal),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(13.0),
                shape: StadiumBorder(),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
