import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constant/constant.dart';

class ShowTipsInfo extends StatefulWidget {
  String info;

  ShowTipsInfo({Key? key, required this.info}) : super(key: key);

  @override
  State<ShowTipsInfo> createState() => _ShowTipsInfoState();
}

class _ShowTipsInfoState extends State<ShowTipsInfo> {
  @override
  Widget build(BuildContext context) {
    print('${widget.info}kkkkkk');

    return SingleChildScrollView(
      child: Container(
        // height: 300,
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                launch('https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwjCiZK16Mj2AhVATWwGHaj6B08QPAgI');
              },
              child: Stack(
                children: [
                  Container(
                    child: Image.asset('${img5}'),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.46,
                    top: 70,
                    child: Text(
                      'Tap',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips1}',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips2}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips3}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips5}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips4}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
