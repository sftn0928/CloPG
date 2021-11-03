import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ゲーム詳細画面
class GameDetail extends StatefulWidget {
  @override
  _GameDetail createState() => _GameDetail();
}

class _GameDetail extends State<GameDetail> {
  bool _check = false;

  void _handleCheckbox(bool? e){
    setState(() {
      _check = e!;
    });
  }

  Widget build(BuildContext context) {
    // // 画像を指定するリスト
    // var list = [
    //   _photoItem("image")
    // ];

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Game Detail'),
      ),
      body: Card(
        // color: Color.fromRGBO(18, 25, 31, 1.0),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // 作業フォルダにimagesフォルダを作成し、その中にsample.jpgという名前の画像を入れて表示
            Image.asset('images/sample.jpg'),
            _titleArea(),
            _playCountInputArea(),
            _detailInputArea()
          ]
        ),
      ),
    );
  }

  // // 指定した名前の画像を表示する
  // Widget _photoItem(String image){
  //   var assetImage = "assets/img/" + image + ".png";
  //   return Container(
  //     child: Image.asset(assetsImage, fit: BoxFit.cover,),
  //   );
  // }

  Widget _titleArea(){
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
                    "Apex Legends",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                Container(
                  child: Text(
                    "FPS",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          new Checkbox(
            activeColor: Colors.blue,
            value: _check,
            onChanged: _handleCheckbox,
          ),
        ],
      )
    );
  }

  Widget _playCountInputArea(){
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
                      "プレイ時間",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ],
              )

          ),
          ElevatedButton(onPressed: (){}, child: Text("確定"))
        ],
      ),
    );
  }

  Widget _detailInputArea(){
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      "メモ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16
                      ),
                    ),
                  ),
                  TextField()
                ],
              )
          ),
          ElevatedButton(onPressed: (){}, child: Text("確定"))
        ],
      ),
    );
  }
}

