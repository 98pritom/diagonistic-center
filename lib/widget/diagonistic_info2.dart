import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ShowTipsInfo2 extends StatefulWidget {
  String info;

  ShowTipsInfo2({Key? key, required this.info}) : super(key: key);

  @override
  State<ShowTipsInfo2> createState() => _ShowTipsInfo2State();
}

class _ShowTipsInfo2State extends State<ShowTipsInfo2> {
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
              child: Image.asset('${img3}'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips6}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips7}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips8}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips9}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips10}',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
