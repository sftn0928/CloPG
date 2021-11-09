import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'my_game_detail.dart';

// ゲーム一覧画面（自分の）

//Storageに保存した画像のURLを取得する際のコード
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

class MyGameList extends StatelessWidget {
  final Stream<QuerySnapshot> _stream =
  FirebaseFirestore.instance.collection('user_game').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MY Game List'),
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: _stream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text('Loading...');
              }
              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
                  return ListTile(
                    leading: NetworkImageBuilder(FirebaseStorage.instance
                        .ref(data['user_game'])
                        .getDownloadURL()),
                    title: Text(data['title']),
                    subtitle: Text(data['category']),
                    // subtitle: Text(data['comment']),
                    trailing: Icon(Icons.more_vert),
                    // trailing: Text(data['playTime']),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyGameDetail(data['title'], data['category'], data['imgURL'], data['playTime'], data['comment']
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              );
            }));
  } // children:
} // listTiles
