import 'package:flutter/material.dart';

class CuisinerFilter extends StatefulWidget {
  const CuisinerFilter({super.key});

  @override
  State<CuisinerFilter> createState() => _CuisinerFilterState();
}

class _CuisinerFilterState extends State<CuisinerFilter> {
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;

  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _roundedButtonFilter(() {
              print('marrrrrrrrrrrrrrr');
               setState(() { btnAmerican = !btnAmerican; }); }, btnAmerican, 'America'),
            _roundedButtonFilter(() { setState(() { btnAmerican = !btnAmerican; }); }, btnAmerican, 'America'),
            _roundedButtonFilter(() { setState(() { btnAmerican = !btnAmerican; }); }, btnAmerican, 'America'),
            
          ],
        )
      ],
    );
  }

  
  
Widget _roundedButtonFilter(Function func, bool isActive, String labelText) {
  return ElevatedButton(
      onPressed: () => func,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(5.0),
        backgroundColor: MaterialStateProperty.all(
            Colors.white), // Set the background color to blue
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: isActive ? Colors.orange : Colors.grey),
          ),
        ),
      ),
      child: Text(labelText,
          style: TextStyle(
              color: isActive ? Colors.orange : Colors.grey, fontSize: 15.0)));
}

}

