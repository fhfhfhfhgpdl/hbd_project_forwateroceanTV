import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


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
              ElevatedButton(onPressed: (){Get.toNamed('/Norm');},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20)
              ),
                  child: const Text('편지',
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25, fontWeight: FontWeight.w700),textAlign: TextAlign.center,),),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              ElevatedButton(onPressed: (){Get.toNamed('/Spec');},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20)
              ),
                  child: const Text('사진',textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25, fontWeight: FontWeight.w500),),),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              ElevatedButton(onPressed: (){Get.toNamed('/Pre');},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20)
                ),
                child: const Text('선물',textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PCP', fontSize: 25, fontWeight: FontWeight.w500),),),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              TextButton(onPressed: () async{
                final url = Uri.parse('https://velog.io/@fhfhfhfhgpdl/%EC%83%9D%EC%9D%BC%EC%B6%95%ED%95%98-%ED%8E%B8%EC%A7%80-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8');
                if (await canLaunchUrl(url)){
                  launchUrl(url, mode: LaunchMode.externalApplication);
                }
              }, child: const Text('개발 노트로 이동'))
            ],
          ),
        ),
      ),
    );
  }
}
