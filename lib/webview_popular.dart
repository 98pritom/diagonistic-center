import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPopular extends StatelessWidget {
  const WebViewPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40.h),
          const Expanded(
            child: WebView(
              initialUrl:
              'https://www.google.com/maps/place/Popular+Medical+Center+Ltd/@24.8993411,91.8574334,15z/data=!4m2!3m1!1s0x0:0x495d54cee9ae255f?sa=X&ved=2ahUKEwjmqb7I38z2AhWZxTgGHdLPCtAQ_BJ6BAgqEAU',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}
