import 'package:flutter/material.dart';
import 'package:food_mvvm/src/colors/colors.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/alert_dialog.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/back_button.dart';
import 'package:food_mvvm/src/features/presentation/commons_wiget/header_text.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Builder(builder: (BuildContext context) {
            return backButton(context, Colors.black);
          })),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            headerText("tengo una cuenta?", Theme.of(context).primaryColor,
                FontWeight.bold, 30.0),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Por favor, introduzca su dirección de correo electrónico. recibirá un enlace para crear una nueva contraseña por correo electrónico',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0),
              ),
            ),
            _emailInput(),
            _buttonForgot(context)
          ],
        ),
      )),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: inputColors, borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo electronico',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _buttonForgot(BuildContext context) {
  return Container(
    width: 350.0,
    height: 55.0,
    margin: EdgeInsets.only(top: 25.0),
    child: ElevatedButton(
      onPressed: () {
        _showAlert(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Enviar',
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(width: 10),
          Icon(Icons.login_outlined),
        ],
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(accentColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
  );
}

void _showAlert(BuildContext context) {
   showAlertDialog(context, 'assets/lock.png',
   "Tu contraseña ha sido restablecida",
   "en breve recibirá un correo electrónico con un código para configurar una nueva contraseña",
   "Hecho",_goToLoginPage);
}

void _goToLoginPage(BuildContext context){
     Navigator.pushNamed(context, 'login');
}


