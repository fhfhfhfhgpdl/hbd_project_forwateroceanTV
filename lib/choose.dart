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
                  child: Text('편지',
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25, fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20)
              ),),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              ElevatedButton(onPressed: (){Get.toNamed('/Spec');},
                  child: Text('사진',textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25, fontWeight: FontWeight.w500),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20)
              ),),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              ElevatedButton(onPressed: (){Get.toNamed('/Spec');},
                child: Text('선물',textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25, fontWeight: FontWeight.w500),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20)
                ),),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              TextButton(onPressed: (){}, child: Text('개발 노트로 이동'))
            ],
          ),
        ),
      ),
    );
  }
}
