import 'package:flutter/material.dart';
import 'package:food_mvvm/src/colors/colors.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/alert_dialog.dart';
import 'package:food_mvvm/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:food_mvvm/src/features/presentation/tabs/favorite_tab/View/favorite_tab.dart';
import 'package:food_mvvm/src/features/presentation/tabs/my_orders_tab/View/my_oder_tab.dart';
import 'package:food_mvvm/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
     WidgetsBinding.instance?.addPostFrameCallback((_) {
       _pedirLocation(context);
  });
    
  }

  List<Widget> _widgetOptions = [
    ExporeTabs(),
    MyOrderTabs(),
    FavoriteTabs(),
    ProfileTabs()
  ];

  int _selectItemIdex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectItemIdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottonNavigationBar(context),
      body: _widgetOptions.elementAt(_selectItemIdex),
    );
  }

  Widget _bottonNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        //cuando esta seleccionado
        selectedItemColor: accentColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectItemIdex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment), label: 'My Order'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile')
        ]);
  }

  // void _pedirLocation(BuildContext context) async{
  //   print("marioooooooooooooooooooooooooooo");

  //  await showAlertDialog(context, "assets/location.png", "Activa tu localización",
  //   "permita usar su ubicación para mostrar el restaurante cercano en el mapa",
  //    "Activar localización",
  //   _goToLocation(context));

  // }

  void _pedirLocation(BuildContext context)async {
  await showAlertDialog(context, 'assets/location.png',
   "Activa tu localización",
   "permita usar su ubicación para mostrar el restaurante cercano en el mapa",
   "Activar localización",_goToLocation);
}


   _goToLocation(BuildContext context){
         Navigator.pushNamed(context, 'welcome');

} 

//   void _pedirLocation(BuildContext context) {
//    showAlertDialog(context, 'assets/lock.png',
//    "Tu contraseña ha sido restablecida",
//    "en breve recibirá un correo electrónico con un código para configurar una nueva contraseña",
//    "Hecho",_goToLoginPage);
// }

// void _goToLoginPage(BuildContext context){
//      Navigator.pushNamed(context, 'login');
// }
}
