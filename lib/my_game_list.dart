import 'dart:ui' as ui;
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:share_extend/share_extend.dart';

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
//  共有機能
  final GlobalKey shareKey = GlobalKey();

  Future<ByteData?> exportToImage(GlobalKey globalKey) async {
    final boundary =
        globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage(
      pixelRatio: 3,
    );
    final byteData = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );
    return byteData;
  }

  Future<File> getApplicationDocumentsFile(
      String text, List<int> imageData) async {
    final directory = await getApplicationDocumentsDirectory();

    final exportFile = File('${directory.path}/$text.png');
    if (!await exportFile.exists()) {
      await exportFile.create(recursive: true);
    }
    final file = await exportFile.writeAsBytes(imageData);
    return file;
  }

  void shareImageAndText(String text, GlobalKey globalKey) async {
    //shareする際のテキスト
    try {
      //byte dataに
      final bytes = await exportToImage(globalKey);
      final widgetImageData =
          bytes?.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      //App directoryファイルに保存
      final applicationDocumentsFile =
          await getApplicationDocumentsFile(text, widgetImageData!);

      final path = applicationDocumentsFile.path;
      await ShareExtend.share(path, "image");
      // applicationDocumentsFile.delete();
    } catch (error) {
      print(error);
    }
  }

  final Stream<QuerySnapshot> _stream =
      FirebaseFirestore.instance.collection('user_game').snapshots();
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
        key: shareKey,
        child: Scaffold(
            appBar: AppBar(
              title: Text('MY Game List'),
              centerTitle: true,
              elevation: 10,
              actions: [
                IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () => shareImageAndText(
                          'sample_widget',
                          shareKey,
                        )),
              ],
            ),
            body: StreamBuilder<QuerySnapshot>(
                stream: _stream,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text('Loading...');
                  }

                  return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      return ListTile(
                        leading: NetworkImageBuilder(FirebaseStorage.instance
                            .ref(data['imgURL'])
                            .getDownloadURL()),
                        title: Text(data['title']),
                        // subtitle: Text(data['category']),
                        subtitle: Text("コメント：" + data['comment']),
                        // trailing: Icon(Icons.more_vert),
                        trailing:
                            Text("プレイ時間：" + data['playTime'].toString() + "h"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyGameDetail(
                                  data['title'],
                                  data['category'],
                                  data['imgURL'],
                                  data['playTime'],
                                  data['comment']),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  );
                })));
  } // children:
} // listTiles
