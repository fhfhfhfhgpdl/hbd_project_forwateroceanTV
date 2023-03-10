import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class pre extends StatelessWidget {
  const pre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('선물 ㄱㄱ 안나오면 디엠으로 드림'),
          onPressed: () async {
            final url = Uri.parse('https://hbd-kakao.web.app/');
            if (await canLaunchUrl(url)) {
              launchUrl(url, mode: LaunchMode.externalApplication);
            }
          },
        ),
      ),
    );
  }
}
