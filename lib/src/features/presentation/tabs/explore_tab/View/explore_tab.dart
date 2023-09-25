import 'package:flutter/material.dart';

import '../../../../../colors/colors.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ExporeTabs extends StatelessWidget {
  const ExporeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                _topBar(context),
                Container(
                  margin: EdgeInsets.only(
                      top: 20, bottom: 20.0, left: 10.0, right: 10.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Descubre nuevos lugares',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                sliderCard()
              ],
            ),
          )
        ]))
      ],
    ));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16, top: 10),
        decoration: BoxDecoration(
            border: Border.all(color: borderColors),
            borderRadius: BorderRadius.circular(20.0)),
        width: MediaQuery.of(context).size.width * 0.75,
        child: Row(
          children: [
            Icon(Icons.search, size: 20.0, color: inputColors),
            Container(
              margin: EdgeInsets.only(left: 5.0),
              child: Text(
                "Buscar",
                style: TextStyle(color: inputColors, fontSize: 17.0),
              ),
            )
          ],
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10.0, top: 10),
        decoration: BoxDecoration(
            color: borderColors, borderRadius: BorderRadius.circular(30)),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      )
    ],
  );
}

Widget sliderCard() {
  return Container(
    height: 350.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _tarjeta(context);
              });
        }),
  );
}

Widget _tarjeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: 200.0,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfDF8MHw%3D&auto=format&fit=crop&w=500&q=60')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Andy & Cindy's Diner",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("87 Botsford Circle Apt",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Text("4.8",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Text("(233 ratings)",
                    style: TextStyle(
                        color: disabledColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.5,
                        shape: StadiumBorder(),
                        primary: accentColor,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text('Delivery', style: TextStyle(fontSize: 11.0)),
                    ))
              ],
            )
          ],
        )
      ],
    ),
  );
}
