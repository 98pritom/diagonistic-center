import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewLabAid extends StatelessWidget {
  const WebViewLabAid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40.h),
          const Expanded(
            child: WebView(
              initialUrl:
              'https://www.google.com/maps/place/LABAID+Diagnostic+Sylhet/@24.8990855,91.8563394,15z/data=!4m5!3m4!1s0x0:0x627c3a9e8a664fc3!8m2!3d24.8990855!4d91.8563394?hl=en',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}
