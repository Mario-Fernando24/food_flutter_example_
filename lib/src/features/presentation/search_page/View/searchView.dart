import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/card_vertical.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_double.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 40.0,
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10.0),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                          "Buscar", Colors.black, FontWeight.bold, 30.0)),
                  _searchInput(context),
                  SizedBox(height: 20.0),
                  headerDoubleText("Búsqueda reciente", "Clear all", () {}),
                  _sliderRecentSearch()
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: 'Buscar',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    height: 190.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return cardvertical(context, 160.0, 120.0, "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfDF8MHw%3D&auto=format&fit=crop&w=500&q=60", "Andy & Cindy's Diner", "87 Botsford Circle Apt");
              });
        }),
  );
}

