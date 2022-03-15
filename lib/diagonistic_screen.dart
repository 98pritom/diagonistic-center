import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String _url = 'https://zeenews.india.com/bengali/tags/health-tips.html';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagonistic Center'),
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
                      child: Image.network('https://infovandar.com/wp-content/uploads/2021/12/Popular-Diagnostic-Center-Sylhet.png',
                          //width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text('Popular Diagonistic Center'),
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
                      child: Image.network('https://i.pinimg.com/originals/82/87/e1/8287e141a79e2b899a3a0a253790fe4b.jpg',
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
                      child: Image.network('https://lh5.googleusercontent.com/p/AF1QipMwN-Ig_HnWamKL85XMkdGErSk1Z9UN_H2v3alw=w408-h291-k-no',
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
