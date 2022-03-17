import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constant/constant.dart';
class DiagnisticInfo2 extends StatefulWidget {
  String info;

  DiagnisticInfo2({Key? key, required this.info}) : super(key: key);

  @override
  State<DiagnisticInfo2> createState() => _ShowTipsInfo2State();
}

class _ShowTipsInfo2State extends State<DiagnisticInfo2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: 300,
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   child: Image.asset('assets/ibnsina.png'),
            // ),
            GestureDetector(
              onTap: () {
                launch('https://www.google.com/maps/place/Ibn+Sina+Diagnostic+%26+Consultation+Center/@24.8987436,91.8613229,15z/data=!4m5!3m4!1s0x0:0x9586552e413ea939!8m2!3d24.8987436!4d91.8613229');
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
                '${tips28}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips29}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips30}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips31}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips32}',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
