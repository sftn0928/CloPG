import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login/login_page.dart';
import 'app.dart';
import 'game_detail.dart';
import 'game_list.dart';
import 'my_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 各ファイルの名前を入力して実行すればそのページが表示される
      home: App(),
    );
  }
}