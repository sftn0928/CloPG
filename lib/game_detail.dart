import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'game_list.dart';

// ゲーム詳細画面
class GameDetail extends StatelessWidget {
  // bool _check = false;
  final String title;
  final String category;
  final String imgURL;
  // final String playTime;
  // final String comment;

  // GameDetail(this.title, this.category, this.imgURL, this.playTime, this.comment);
  GameDetail(this.title, this.category, this.imgURL);

  var _playTime = TextEditingController();
  var _comment = TextEditingController();
  // var _inputTextController = TextEditingController();

  // void _handleCheckbox(bool? e){
  //   //   setState(() {
  //   //     _check = e!;
  //   //   });
  //   // }

  Future AddUser() async {
    if (_playTime.text == null || _playTime.text == "") {
      throw 'プレイ時間が入力されていません';
    }

    if (_comment.text == null || _comment.text == "") {
      throw 'コメントが入力されていません';
    }

    // firestoreに追加
    await FirebaseFirestore.instance.collection('user_game').add({
      'title': title,
      'category': category,
      'imgURL': imgURL,
      'playTime': _playTime.text,
      'comment': _comment.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Game Detail'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Card(
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // 作業フォルダにimagesフォルダを作成し、その中にsample.jpgという名前の画像を入れて表示
              // Image.asset('images/sample.jpg'),
              NetworkImageBuilder(
                  FirebaseStorage.instance.ref(imgURL).getDownloadURL()),
              _titleArea(),
              _playCountInputArea(),
              _detailInputArea(),
              // _valueArea(),
              _determineArea(context)
            ]),
      ),
    );
  }

  Widget _titleArea() {
    return Container(
        margin: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  Container(
                    child: Text(
                      category,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget _playCountInputArea() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                // margin: const EdgeInsets.only(bottom: 0),
                child: Text(
                  "プレイ時間（○○時間）",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  hintText: '例）100',
                ),
                controller: _playTime,
              ),
            ],
          )),
        ],
      ),
    );
  }

  Widget _detailInputArea() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: const EdgeInsets.only(bottom: 0),
                    child: Text(
                      "コメント",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: '例）めっちゃおもしろい！！',
                    ),
                    controller: _comment,
                  )
                ],
              )
          ),
        ],
      ),
    );
  }

  // Widget _valueArea(){
  //
  // }

  Widget _determineArea(context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(),
            ElevatedButton(
                onPressed: () async {
                  // 追加の処理
                  try {
                    await AddUser();
                    Navigator.pop(context);
                  } catch (e) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(e.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Text("確定"))
          ],
        ),
      ),
    );
  }
}
