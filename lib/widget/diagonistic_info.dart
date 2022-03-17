import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../constant/constant.dart';

class DiagnosticInfo extends StatefulWidget {
  String info;

  DiagnosticInfo({Key? key, required this.info}) : super(key: key);

  @override
  State<DiagnosticInfo> createState() => _DiagnosticInfoState();
}

class _DiagnosticInfoState extends State<DiagnosticInfo> {
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
                launch('https://www.google.com/maps/place/Popular+Medical+Center+Ltd/@24.8993411,91.8574334,15z/data=!4m2!3m1!1s0x0:0x495d54cee9ae255f?sa=X&ved=2ahUKEwjmqb7I38z2AhWZxTgGHdLPCtAQ_BJ6BAgqEAU');
              },
              child: Stack(
                children: [
                  Container(
                    child: Image.asset('assets/popular.png'),
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
                '${tips23}',
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
                  '${tips29}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips25}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips24}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips26}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  '${tips32}',
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
