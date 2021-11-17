import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:share/share.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final url = "https://ironodata.info/imghex2/0000FF.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Card(
        child: Column(
          children: [
            _myPageImage(),
            _myProfileText(),
            _gamePlayListValue(),
            _gamePlayTimeValue(),
          ],
        ),
      ),
    );
  }

  Widget _myPageImage(){
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Containerを丸くする
                image: DecorationImage(
                  fit: BoxFit.fill, // 親Widget(今回はContainer)と同じサイズになるように調整する
                  image: NetworkImage(url),
                ),
              ),
            )
          ],
      ),
    );
  }

  Widget _myProfileText(){
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              'None',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: Text(
              '夏までに目指せ達成率100%!',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  Widget _gamePlayListValue(){
    return Container(
      margin: EdgeInsets.all(50),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
                children: [
                  new Icon(
                      Icons.assignment_outlined,
                      size: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      '総ゲーム数',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    child: Text(
                      '9',
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              )
          ),
          Expanded(
              child: Column(
                children: [
                  new Icon(
                      Icons.star,
                      size: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'プレイ済み',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }

  Widget _gamePlayTimeValue(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              '総プレイ時間',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            child: Text(
              '1000',
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}