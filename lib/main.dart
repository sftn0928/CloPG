import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_clopg/footer_ui.dart';
import 'package:flutter_clopg/game_detail.dart';
import 'package:flutter_clopg/game_index.dart';
import 'package:flutter_clopg/my_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 各ファイルの名前を入力して実行すればそのページが表示される
      home: my_page(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}