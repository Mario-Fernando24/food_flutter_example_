import 'package:flutter/material.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

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
                    child: headerText('Descubre nuevos lugares', Colors.black,
                        FontWeight.bold, 25.0)),
                sliderCard(),
                _headers(context, "Popular esta semana", "Show all"),
                _populares(context,
                    "https://img.freepik.com/foto-gratis/hamburguesa-gourmet-parrilla-vegetales-frescos-papas-fritas-generada-ia_188544-38732.jpg"),
                _populares(context,
                    "https://cdn.pixabay.com/photo/2020/01/20/00/08/pizza-4779230_1280.jpg"),
                _populares(context,
                    "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfDF8MHw%3D&auto=format&fit=crop&w=500&q=60"),
                _headers(context, "Colecciones", "Show all"),
                _sliderCollections()
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
      GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'search'),
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 16, top: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20.0)),
          width: MediaQuery.of(context).size.width * 0.70,
          child: Row(
            children: [
              Icon(Icons.search, size: 20.0, color: Colors.grey),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  "Buscar",
                  style: TextStyle(color: Colors.grey, fontSize: 17.0),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width*0.15,
        height: 45.0,
        margin: EdgeInsets.only(left: 10.0, top: 10),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(30)),
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

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 20.0),
      ),
      Spacer(),
      GestureDetector(
        onDoubleTap: () {},
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populares(BuildContext context, String photo) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10.0),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: NetworkImage(photo),
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText("Andy & Cindy Diner", Colors.black,
                          FontWeight.bold, 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "texto gris mmm",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.0),
                      Text(
                        "4.5",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Text(
                        "230 rating",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        height: MediaQuery.of(context).size.height * 0.038,
                        
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(accentColor),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: const Text("Delivery", style: TextStyle(fontSize: 11.0))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 200.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _tarjetaCollections(context);
              });
        }),
  );
}

Widget _tarjetaCollections(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: 300,
              height: 150,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfDF8MHw%3D&auto=format&fit=crop&w=500&q=60"),),
        ),
      ],
    ),
  );
}
