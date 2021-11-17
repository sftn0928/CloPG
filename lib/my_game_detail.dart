import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'game_list.dart';

// ゲーム詳細画面
class MyGameDetail extends StatelessWidget {
  final String title;
  final String category;
  final String imgURL;
  final String playTime;
  final String comment;

  MyGameDetail(
      this.title, this.category, this.imgURL, this.playTime, this.comment);

  var _playTime = TextEditingController();
  var _comment = TextEditingController();

  // // データの更新
  // Future UpdateUser() async {
  //   if (_playTime.text == null || _playTime.text == "") {
  //     throw 'プレイ時間が入力されていません';
  //   }
  //
  //   if (_comment.text == null || _comment.text == "") {
  //     throw 'コメントが入力されていません';
  //   }
  //   await FirebaseFirestore.instance.collection('user_game').doc(docRef).update({
  //     'title': title,
  //     'category': category,
  //     'imgURL': imgURL,
  //     'playTime': _playTime.text,
  //     'comment': _comment.text,
  //   });
  // }

  // // データの削除
  // Future DeleteUser() async {
  //   await FirebaseFirestore.instance.collection('user_game').doc(.id).delete();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('My Game Detail'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Card(
        // color: Color.fromRGBO(18, 25, 31, 1.0),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                NetworkImageBuilder(
                    FirebaseStorage.instance.ref(imgURL).getDownloadURL()),
                _titleArea(),
                _playCountInputArea(),
                _detailInputArea(),
                _determineArea(context)
              ]),
        ),
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
                child: Text(
                  "プレイ時間（○○時間）",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  hintText: playTime,
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
                  "メモ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: comment,
                ),
                controller: _comment,
              )
            ],
          )),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(),
            ElevatedButton(
                child: Text("変更確定"),
                onPressed: () async {
                  // 追加の処理
                  try {
                    // await UpdateUser();
                    Navigator.pop(context);
                  } catch (e) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(e.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
            ),
            ElevatedButton(
                child: Text("削除"),
                onPressed: () async {
                  // 追加の処理
                  try {
                    // await DeleteUser();
                    Navigator.pop(context);
                  } catch (e) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(e.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
            )
          ],
        ),
      ),
    );
  }
}
