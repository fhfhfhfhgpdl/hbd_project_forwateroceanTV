import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Choose extends StatelessWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){},
                  child: Text('재미는있는 보통 편지와 선물',
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25),textAlign: TextAlign.center,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20)
              ),),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              ElevatedButton(onPressed: (){Get.toNamed('/Spec');},
                  child: Text('정성스럽고 진심이 담긴 편지',textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25, fontWeight: FontWeight.w700),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20)
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
