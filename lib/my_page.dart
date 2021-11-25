import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:share/share.dart';

class NetworkImageBuilder extends FutureBuilder {
  NetworkImageBuilder(Future<String> item)
      : item = item,
        super(
        future: item,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CachedNetworkImage(
              imageUrl: snapshot.data,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      );
  final Future<String> item;
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}


class _MyPageState extends State<MyPage> {
  final url = "images/sample.png";

  Future GetUserinfo() async{
    DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection('users').doc('gn9O7UyS3wRsVM0WdHpVG6pA7Yh2').get();
// Map<String,dynamic>? username = user.data() as Map<String,dynamic>;
// return username['username'];
    return snapshot.data();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Card(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _myPageImage(),
              _myProfileText(),
              _gamePlayListValue(),
              _gamePlayTimeValue(),
            ],
          ),
        ),
      ),
    );
  }


  // Future GetUserimg() async{
  //   DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection('users').doc('gn9O7UyS3wRsVM0WdHpVG6pA7Yh2').get();
  //   return snapshot.data() as Map<String,dynamic>;
  // }

  // Future<void> downloadURLExample() async {
  //   String downloadURL = await firebase_storage.FirebaseStorage.instance
  //       .ref('users/123/avatar.jpg')
  //       .getDownloadURL();
  // }

  Future<String> getDocId() async {
    List docList = [];
    await FirebaseFirestore.instance.collection('user_game').get().then(
          (QuerySnapshot querySnapshot) => {
        querySnapshot.docs.forEach(
              (doc) {
            docList.add(doc.id);
          },
        ),
      },
    );
    docList.forEach(print);
    return docList.length.toString();
  }

  @override

  Widget _myPageImage() {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/sample2.png")

                )
            ),
         )
        ],
      ),
    );
  }


  // Widget _myPageImage(){
  //   return Container(
  //     margin: EdgeInsets.all(30),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           FutureBuilder<dynamic>(
  //             future: GetUserimg(),
  //             builder: (context,snapshot) {
  //               return Container(
  //                 width: 150,
  //                 height: 150,
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.circle, // Containerを丸くする
  //                   image: DecorationImage(
  //                     fit: BoxFit.fill, // 親Widget(今回はContainer)と同じサイズになるように調整する
  //                     image: NetworkImageBuilder(.getDownloadURL()),
  //                   ),
  //                 ),
  //               );
  //             }
  //           )
  //         ],
  //     ),
  //   );
  // }

  Widget _myProfileText() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: FutureBuilder<dynamic>(
              future: GetUserinfo(),
              builder: (context,snapshot) {
                return Text(
                  snapshot.hasData ? '${snapshot.data['username']}' : 'No Name',
                  //'None',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                );
              }
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: FutureBuilder<dynamic>(
                future: GetUserinfo(),
              builder: (context,snapshot) {
                return Text(
                  snapshot.hasData ? '${snapshot.data['usercomment']}' : 'No Comment',
                  //'夏までに目指せ達成率100%!',
                  style: TextStyle(fontSize: 18),
                );
              }
            ),
          )
        ],
      ),
    );
  }

  Widget _gamePlayListValue() {
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
          )),
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
          ))
        ],
      ),
    );
  }

  Widget _gamePlayTimeValue() {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
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
