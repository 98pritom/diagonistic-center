import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewIbnSina extends StatelessWidget {
  const WebViewIbnSina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40.h),
          const Expanded(
            child: WebView(
              initialUrl:
              'https://www.google.com/maps/place/Ibn+Sina+Diagnostic+%26+Consultation+Center/@24.8987436,91.8613229,15z/data=!4m5!3m4!1s0x0:0x9586552e413ea939!8m2!3d24.8987436!4d91.8613229',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}
