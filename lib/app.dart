import 'package:flutter/material.dart';
//import 'package:adobe_xd/pinned.dart';
//import 'package:flutter_clopg/game_choice.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import 'game_list.dart';
import 'my_page.dart';

// フッター画面
class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> {
  int _selectedIndex = 0;

  static List<Widget> _pageList = [
    GameList(),
    MyPage(),
    //GameChoice(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: _pageList[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Game List'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('My Page'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            title: Text('Check'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}