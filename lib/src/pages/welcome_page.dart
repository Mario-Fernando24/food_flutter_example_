import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [_imageWelcome(), _textButton(context)],
    ));
  }

  Widget _imageWelcome() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/welcome2.jpg'),
      )),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          color: Colors.black.withOpacity(0.3),
        ),
      ),
    );
  }

  Widget _textButton(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(
            "ENTREGA DE COMIDA RÁPIDA A SU PUERTA",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 45.0),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
          child: Text(
            "establezca la ubicación exacta para encontrar los restaurantes adecuados cerca de usted",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15.0),
          ),
        ),
        Container(
          width: 350.0,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "login");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.login),
                SizedBox(width: 10),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).accentColor),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          ),
        ),
        Container(
          width: 350.0,
          height: 50.0,
          margin: EdgeInsets.only(top: 20.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Conectar con facebook',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).buttonColor),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
