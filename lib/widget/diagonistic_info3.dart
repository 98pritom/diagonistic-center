import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ShowTipsInfo3 extends StatefulWidget {
  String info;

  ShowTipsInfo3({Key? key, required this.info}) : super(key: key);

  @override
  State<ShowTipsInfo3> createState() => _ShowTipsInfo3State();
}

class _ShowTipsInfo3State extends State<ShowTipsInfo3> {
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
            Container(
              child: Image.asset('assets/labaid.png'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips15}',
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
                '${tips11}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips12}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips13}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips14}',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
