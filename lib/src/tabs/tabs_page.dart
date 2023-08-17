import 'package:flutter/material.dart';
import 'package:food_mvvm/src/tabs/explore_tab.dart';
import 'package:food_mvvm/src/tabs/favorite_tab.dart';
import 'package:food_mvvm/src/tabs/my_oder_tab.dart';
import 'package:food_mvvm/src/tabs/profile_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

    List<Widget> _widgetOptions = [
        ExporeTabs(),
        MyOrderTabs(),
        FavoriteTabs(),
        ProfileTabs()
    ];

    int _selectItemIdex = 0;

    void _cambiarWidget(int index){
      setState(() {
        _selectItemIdex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottonNavigationBar(context),
      body:_widgetOptions.elementAt(_selectItemIdex),
    );
  }

  Widget _bottonNavigationBar(BuildContext context) {
  return BottomNavigationBar(
      iconSize: 30.0,
      //cuando esta seleccionado
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectItemIdex,
      onTap: _cambiarWidget,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.assessment), label: 'My Order'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Profile')
      ]);
}
}


