import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:webview_flutter/webview_flutter.dart';

const String _url = 'https://zeenews.india.com/bengali/tags/health-tips.html';

class DiagnosticsInfo extends StatefulWidget {
  const DiagnosticsInfo({Key? key}) : super(key: key);

  @override
  _DiagnosticsInfoState createState() => _DiagnosticsInfoState();
}

class _DiagnosticsInfoState extends State<DiagnosticsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnoistic Center'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0.w),
            child: Card(
              elevation: 10.w,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0.w)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    'ExtendedPage',
                    arguments: '1',
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('assets/Popular-Hospital.jpg',
                          //width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text('Popular Diagnoistic Center'),
                      // subtitle: Text('Diabetes'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    'ExtendedPage',
                    arguments: '2',
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('assets/ibnsinadiagnostic.jpg',
                          // width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text('Ibn Sina Diagnostic & Consultation Center'),
                      // subtitle: Text('Phobia'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    'ExtendedPage',
                    arguments: '3',
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset('assets/labaiddiagnostic.jpg',
                          // width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text('Lab Aid'),
                      // subtitle: Text('Body Weight'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('ShowWeb');
              },
              child: Text('See more', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
