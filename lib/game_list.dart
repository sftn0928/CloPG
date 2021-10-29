import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'game_choice.dart';
import 'test_data.dart';

// ゲーム一覧画面
class GameList extends StatefulWidget {
  @override
  _GameList createState() => _GameList();
}

class _GameList extends State<GameList> {
  // テストデータ呼び出し
  Game game = Game();

  // ゲームリストの表示
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game List'),
      ),
      body: ListView.builder(
          // テストのデータの要素数を取得
          itemCount: game.index,
          // その要素数分リストを作成する
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  color: Colors.red,
                ),
                title: Text(game.title[index]),
                subtitle: Text(game.detail[index]),
                trailing: Icon(Icons.more_vert),
                onTap: (){
                  print('test');
                },
              ),
            );
          }
        // children: listTiles
      ),
    );
  }
}
