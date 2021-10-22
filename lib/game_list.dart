import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'game_choice.dart';

// ゲーム一覧画面
class GameList extends StatefulWidget {
  @override
  _GameList createState() => _GameList();
}

class _GameList extends State<GameList> {
  List<String> gameTitle = [
    'Apex',
    'VALORANT',
    'MONSTER HUNTER',
  ];
  List<String> gameDetail = [
    'FPS',
    'FPS',
    'Action'
  ];

  // final firestore = FirebaseFirestore.instance;
  // final doc = await firestore
  //     .collection("tests")
  //     .doc("xxxxxxxxxxxxxxxx")
  //     .get();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game List'),
      ),
      body: ListView.builder(
          itemCount: gameTitle.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  color: Colors.red,
                ),
                title: Text(gameTitle[index]),
                subtitle: Text(gameDetail[index]),
                trailing: Icon(Icons.more_vert),
                onTap: (){
                  print('onTap');
                },
              ),
            );
          }
        // children: listTiles
      ),
    );
  }

// static List<Widget> listTiles = <Widget>[
//   ListTile(
//     leading: Container(
//       width: 100,
//       color: Colors.red,
//     ),
//     title: Text('ゲームタイトル'),
//     subtitle: Text('ジャンル'),
//     // trailing: Icon(Icons.more_vert),
//     trailing: Icon(
//       alreadySaved ? Icons.favorite : Icons.favorite_border,
//       color: alreadySaved ? Colors.red : null,
//     ),
//   ),
//   ListTile(
//     leading: Container(
//       width: 100,
//       color: Colors.blue,
//     ),
//     title: Text('ゲームタイトル'),
//     subtitle: Text('ジャンル'),
//     trailing: Icon(Icons.more_vert),
//   ),
//   ListTile(
//     leading: Container(
//       width: 100,
//       color: Colors.green,
//     ),
//     title: Text('ゲームタイトル'),
//     subtitle: Text('ジャンル'),
//     trailing: Icon(Icons.more_vert),
//   )
// ];
}
