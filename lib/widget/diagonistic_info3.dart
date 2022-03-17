import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constant/constant.dart';

class DiagnosticInfo3 extends StatefulWidget {
  String info;

  DiagnosticInfo3({Key? key, required this.info}) : super(key: key);

  @override
  State<DiagnosticInfo3> createState() => _DiagnosticInfo3State();
}

class _DiagnosticInfo3State extends State<DiagnosticInfo3> {
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
            //   child: Image.asset('assets/labaid.png'),
            // ),
            GestureDetector(
              onTap: () {
                launch('https://www.google.com/maps/place/LABAID+Diagnostic+Sylhet/@24.8990855,91.8563394,15z/data=!4m5!3m4!1s0x0:0x627c3a9e8a664fc3!8m2!3d24.8990855!4d91.8563394?hl=en');
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
                '${tips37}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips33}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips34}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips35}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips36}',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
