import 'package:diagonistic/widget/diagonistic_info.dart';
import 'package:diagonistic/widget/diagonistic_info2.dart';
import 'package:diagonistic/widget/diagonistic_info3.dart';
import 'package:flutter/material.dart';



class ExtendedPage extends StatefulWidget {
  const ExtendedPage({Key? key}) : super(key: key);

  @override
  State<ExtendedPage> createState() => _ExtendedPageState();
}

class _ExtendedPageState extends State<ExtendedPage> {
  @override
  Widget build(BuildContext context) {
    final tipsNumberCollector = ModalRoute.of(context)!.settings.arguments;
    String tipsNumber = tipsNumberCollector.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnostic Center $tipsNumber'),
      ),
      body: (tipsNumber == '1')
          ? DiagnosticInfo(info: tipsNumber)
          : (tipsNumber == '2')
              ? DiagnisticInfo2(info: tipsNumber)
              : DiagnosticInfo3(info: tipsNumber),
    );
  }
}
