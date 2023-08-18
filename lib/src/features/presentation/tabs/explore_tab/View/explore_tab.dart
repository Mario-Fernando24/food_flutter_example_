import 'package:flutter/material.dart';

import '../../../../../colors/colors.dart';

class ExporeTabs extends StatelessWidget {
  const ExporeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [SliverList(delegate: SliverChildListDelegate(
        [
          _topBar(context)
        ]
      ))],
    ));
  }
}

Widget _topBar(BuildContext context){
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16, top: 10),
        decoration: BoxDecoration(
          border: Border.all(color: borderColors),
          borderRadius: BorderRadius.circular(20.0)
        ),
        width: 310,
        child: Row(
          children: [
            Icon(Icons.search, size: 20.0, color: inputColors),
            Container(
              margin: EdgeInsets.only(left: 5.0),
              child: Text("Buscar", style: TextStyle(
                color: inputColors,
                fontSize: 17.0
              ),),
            )
          ],
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10.0, top: 10),
        decoration: BoxDecoration(
          color: borderColors,
          borderRadius: BorderRadius.circular(30)
        ),
        child: IconButton(
          icon: Icon(Icons.filter_list, size: 30.0, color: Colors.white,),
          onPressed: (){},),
      )
        
    ],
   );
}
